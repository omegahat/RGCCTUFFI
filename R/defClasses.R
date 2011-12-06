getRRefTypeName = 
function(type)
{
  if(is(type, "CString"))
     return("character")

  ptype = new("PointerType", typeName = type@name, type = type)
  getRTypeName(ptype)
}



setGeneric("defStructClass",
           function(type, name = type@name, ref = TRUE, refClassName = getRRefTypeName(type),
                     useGlobalFFIType = useClosure, useClosure = TRUE)
              standardGeneric("defStructClass"))


setMethod("defStructClass", "TypedefDefinition",
          function(type, name = type@name, ref = TRUE,
                   refClassName = getRRefTypeName(type),
                    useGlobalFFIType = useClosure, useClosure = TRUE) {
             type = type@type
             defStructClass(type, name, ref, refClassName, useGlobalFFIType, useClosure)
          })



setMethod("defStructClass", "PointerType",
          function(type, name = type@name, ref = TRUE,
                   refClassName = getRRefTypeName(type), 
                    useGlobalFFIType = useClosure, useClosure = TRUE) {
             force(refClassName)
             type = type@type
             defStructClass(type, name, ref, refClassName, useGlobalFFIType, useClosure)
           })

setMethod("defStructClass", "ResolvedTypeReference",
          function(type, name = type@name, ref = TRUE, refClassName = getRRefTypeName(type),
                    useGlobalFFIType = useClosure, useClosure = TRUE) {
             type = resolveType(type)
             defStructClass(type, name, ref, refClassName, useGlobalFFIType, useClosure)
           })


sQuote =
  function(x)
    sprintf("'%s'", x)


setMethod("defStructClass", "StructDefinition",
          function(type, name = type@name, ref = TRUE, refClassName = getRRefTypeName(type),
                           useGlobalFFIType = useClosure, useClosure = TRUE) {
  #
  #  Given a struct description, create   classes for a reference
  # Generate the code to do this.
  # Then we can eval(parse(text = code))
  #
   ids = names(type@fields)

   if(length(ids)) {
      i = grep("^[0-9]", ids)
      if(length(i))
         ids[i] = sprintf("x%s", ids[i]) 
      names(type@fields) = ids
   }
   
   ffiTypes = sapply(type@fields, function(x) gccTUTypeToFFITypeName(x@type))
   ffiRTypes = sapply(type@fields, function(x) gccTUTypeToRClass(x@type))   

   classDef = sprintf("setClass('%s', representation(%s))",
                        name, paste(sprintf("'%s' = '%s'", names(ffiRTypes), ffiRTypes), collapse = ", "))

if(substring(refClassName, 1, 2) == "NA") recover()
   pClassDef = sprintf("setClass('%s', contains = 'RCStructReference')", refClassName)

   ffiType = makeFFITypeCode(ffiTypes)

   ffiDef = character()
   if(useGlobalFFIType) {
       varName = sprintf(".%s.FFIType", name)
       ffiDef = sprintf("'%s' = %s", varName, ffiType)
       ffiType = varName
   }
       
   
   body = makeDollarBody(ids, ffiTypes, , ffiType)
   pDollar = sprintf("setMethod('$', '%s', %s)",
                          refClassName,
                          if(useClosure)
                             sprintf("makeClosure(%s, %s)", body, ffiDef)
                          else
                             body)


   toR = makeCoerceToRCode(name, refClassName, ffiType, ffiDef, useClosure)


   namesCode = sprintf("setMethod('names', '%s', function(x) %s)",
                            refClassName, sprintf("c(%s)", paste(sprintf("'%s'", ids), collapse = ", ")))
   
   cons = makeConstructors(name, refClassName, ids, ffiRTypes, ffiDef)

   if(FALSE)  # Don't use yet.  Table of contents for the generated code.
     toc = codeTOC(methods = c("names", "$", "coerce", ref, refClassName),
                   generics = c(ref, refClassName),
                   classes = c(name, refClassName),
                   functions = character(),
                   vars = c(if(useGlobalFFIType) varName else character()))
   
   structure(list(defs = c(classDef, pClassDef),
                  dollar = pDollar,
                  if(!useClosure) ffiType = ffiDef,
                  coerce = toR,
                  constructors = cons,
                  names = namesCode),
             class = "CStructRCode")

 })

makeConstructors =
function(name, refClassName, fieldNames, rTypes, ffiDef, ffiType = sprintf(".%s.FFIType", name))
{
  sig = paste(c(sprintf("`%s`", fieldNames), sprintf(".obj = new('%s')", name)), collapse = ", ")

  body = sprintf("if(!missing(`%s`))  .obj@`%s` = as(`%s`, '%s')", fieldNames, fieldNames, fieldNames, rTypes)
  
   c(
      sprintf("setGeneric('%s', function(%s) standardGeneric('%s'))", name, sig, name),
      sprintf("setMethod('%s', 'ANY', function(%s) {\n%s\n.obj})", name, sig,
                       paste(body, collapse = "\n")),        
      sprintf("setMethod('%s', 'externalptr', function(%s) as(`%s`, '%s'))", name, sig, fieldNames[1], name),
      sprintf("setMethod('%s', '%s', function(%s) as(`%s`, '%s'))", name, refClassName, sig, fieldNames[1], name),     
      sprintf("setGeneric('%s', function(x) standardGeneric('%s'))", refClassName, refClassName),
      sprintf("setMethod('%s', 'externalptr', function(x) new('%s', ref = x))", refClassName, refClassName),
      sprintf("setMethod('%s', 'missing', makeClosure(function(x) new('%s', ref = alloc(%s)), %s))",
                  refClassName, refClassName, ffiType, ffiDef))
}

makeFFITypeCode =
function(types)
{
#  con = textConnection("xx", "w", local = TRUE)
#  on.exit(close(con))
#  dput(types, con)
#  txt = textConnectionValue(con)
  txt = sprintf("'%s' = %s", names(types), types)
  sprintf("structType(list(%s))", paste(txt, collapse = ", "))
}

makeDollarBody =
function(names, types, className, ffiType = sprintf("%s.FFIType", className),
             useSwitch = FALSE)
{
   RFunction(c("function(x, name) ", "{",
                sprintf("if(is.null(%s) || isNilPointer(%s)) %s <<- %s", ffiType, ffiType, ffiType, makeFFITypeCode(types)),
                  # instead of using match() on the names, use switch.
                  #  Faster, but doesn't
                if(useSwitch)
                    c(sprintf("i = switch(name, %s)",
                         paste(sprintf("'%s' = %d", names(types),
                                                    seq(along = types)), collapse = ", ")),
                         sprintf("getStructField(x, i, %s)", ffiType))
                else
                    sprintf("getStructField(x, name, %s)", ffiType),
               "}"))
}

makeCoerceToRCode =
  #
  #  coerce from 
  #     externalptr, reference class
  #     externalptr, struct copy
  #     reference class, struct
  #
function(name, refName, ffiType, ffiDef = character(), useClosure = TRUE) 
{
   def = sprintf("function(from) setSlots( getStructValue(from, %s), new('%s'))",
                   ffiType, name)

   if(useClosure)
      def = sprintf("makeClosure(%s, %s)", def, ffiDef)
   
   c(sprintf("setAs('%s', '%s', function(from) as(from@ref, '%s'))", refName, name, name),
     sprintf("setAs('externalptr', '%s', function(from) new('%s', ref = from))", refName, refName),
     sprintf("setAs('externalptr', '%s', %s)",
                 name, def))


}

RFunction =
function(code)
{
   structure(paste(code, collapse = "\n"), class = "RFunctionCode")
}

setClass("RCode", contains = "character")
setClass("RFunctionCode", contains = "RCode")
setOldClass("CStructRCode")

setGeneric("define",
            function(x, where = globalenv(), ...) {
              library(Rffi)
              standardGeneric("define")
            })

setMethod("define", "list",
            function(x, where = globalenv(), ...)
              sapply(x, define, where = where, ...))

setMethod("define", "character",
            function(x, where = globalenv(), ...)
              eval(parse(text = x), envir = where))

setMethod("define", "NULL",
           function(x, where = globalenv(), ...) {
             character()
           })

setMethod("define", "RCode",
           function(x, where = globalenv(), ...) {
             eval(parse(text = unlist(x)), envir = where)
           })

setMethod("define", "CStructRCode",
           function(x, where = globalenv(), ...) {
             eval(parse(text = unlist(x)), envir = where)
           })


setMethod("define", "CodeTOC",
           function(x, where = globalenv(), ...) {
             invisible(return(FALSE))
           })


setGeneric("namespaceCode", function(x, ...) standardGeneric("namespaceCode"))
setMethod("namespaceCode", "CodeTOC",
           function(x, ...) {
             funs = c(x@generics, x@functions)
             c(
                sprintf("exportMethods(%s)", paste(x@methods, collapse = ",\n")),
                sprintf("export(%s)", paste(funs, collapse = ",\n")),
                sprintf("exportClasses(%s)", paste(x@classes, collapse = ",\n")))
               
           })
