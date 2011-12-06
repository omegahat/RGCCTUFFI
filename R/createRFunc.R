#
# This is for creating an R function from a GCC-TU description of a routine
#
#
#

createRFunc =
function(routine, name = routine$name, useGlobalCIF = useClosure,
          useClosure = TRUE, returnInputs = NA)
{
   if(length(names(name)) == 0)
     names(name) = name

   rname = names(name)

   retType = routine$returnType

   if(is.na(returnInputs)) {
     if(length(routine$parameters) == 0)
       returnInputs = "FALSE"
     else {
        mutable = mutableParams(routine)
        returnInputs = if(any(mutable)) sprintf("c(%s)", paste(which(mutable), collapse = ", ")) else "FALSE"
     }
   }
   
   parmTypes = lapply(routine$parameters, function(x) gccTUTypeToFFITypeName(x$type))
   rt = gccTUTypeToFFITypeName(retType)
   cif = sprintf("CIF(%s, list(%s))", rt, paste(parmTypes, collapse = ", "))

   cifName =
       if(is.logical(useGlobalCIF))
         if(useGlobalCIF)
           sprintf(".%s.cif", name)
         else
           if(useClosure)
            sprintf("..%s.cif", name)
           else
            NA
       else
          as.character(useGlobalCIF)

   numParams = length(routine$parameters)
   parmNames = names(routine$parameters)
   if(numParams > 0) 
      parmNames = fixParamNames(routine$parameters, parmNames)


   coerceArgs = paste(coerceArgsCode(routine$parameters, parmNames), collapse = "\n  ")
   
   parmNames = paste(parmNames, collapse = ", ")

                   
   coerce = sapply(c("ans", "ans$value"),
                   function(x)
                      convertResult(retType, x))

   getSym = sprintf("if(is.null(.sym) || isNilPointer(.sym))\n  .sym <<- getNativeSymbolInfo('%s')$address", name)
   sym = if(useClosure)
            '.sym'
         else
            sprintf('%s', name)

   getCif = if(useClosure)
               sprintf("if(is.null(%s) || isNilPointer(%s))\n  %s <<- %s", cifName, cifName, cifName, cif)
            else
              ""

   fixCoerce =
     if(any(coerce != ""))
         sprintf("if(is(returnInputs, 'numeric') || any(returnInputs))\n     ans$value = %s\n  else\n     ans = %s\n",
                           coerce[2], coerce[1])
     else
         ""
   
   sep = if(numParams) ", " else ""
   txt = c(sprintf("`%s` =", rname),
           sprintf(" function(%s%s returnInputs = %s, ..., .cif = %s)\n{\n %s\n %s\n %s\n ans =  callCIF(.cif, %s,  %s%s..., returnInputs = returnInputs)\n  %s\n ans\n}\n",
            parmNames, sep, as.character(returnInputs),
            if(is.na(cifName)) cif else cifName,
            getSym,
            getCif,
            coerceArgs,
            sym, parmNames, sep,
            fixCoerce)
           )


   if(useClosure)
      txt = c(txt[1],
              sprintf("makeClosure(%s, .sym = if(is.loaded('%s')) getNativeSymbolInfo('%s')$address else NULL, %s = %s)", txt[2], rname, rname, cifName, cif)
             )
    else if(!is.na(cifName))
      txt = c(txt, sprintf("%s = %s", cifName, cif))
   
   new("RFunctionCode", txt)
}

#XXX Return the node that needs to have a class created for it.
convertResult =
function(type, var)
{
   if(is(type, "CString"))
      "" # var
   else if(is(type, "PointerType")) {
      sprintf("new('%s', ref = %s)", getRTypeName(type), var)
   } else if(is(type, "StructDefinition")) {
       list("", defs = defStructClass(type)) #XXX
   } else {
     var  # leave as is
   }
}


createRefClass =
  #XXX See defClasses.R
function(type, name = getRTypeName(type))
{
  sprintf("setClass('%s', contains = 'RCReference')", name)
  makeCoerceToRCode(type@name, name, gccTUTypeToFFITypeName(type))
}



coerceArgsCode =
function(types, ids = names(types))
{
  if(length(types) == 0)
    return("")
  
  mapply(coerceArgCode, types, ids)
}

coerceArgCode =
function(type, id)
{
   type = type$type
  
   if(is(type, "TypedefDefinition"))
     type = type@type

   if(is(type, "FunctionPointer"))
       sprintf("%s = as(%s, 'RNativeRoutineReference')", id, id)
   else
       ""
 }

