# Enumerations - Values and individual variables and coercion methods.  Constructors ?

 # Use an abstract base class "RAutoDocumentation" which does not have any representation
 # then introduce the now RAutoDocumentation. The intent is to allow RTUDocumentation
 # have a common base class with the RAutoDocumentation.

setClass("RAbstractAutoDocumentation") 

setClass("RAutoDocumentation", contains = c("list", "RAbstractAutoDocumentation"))
setClass("RClassDocumentation", contains = "RAutoDocumentation")
setClass("RFunctionDocumentation", contains = "RAutoDocumentation")
setClass("REnumDocumentation", contains = "RAutoDocumentation")

setClass("RTUDocumentation",
          representation(classes = "list", funcs = "list", enums = "list"),
         contains = "RAbstractAutoDocumentation")

setGeneric("toFile",
            function(obj, file, ...)
              standardGeneric("toFile"))

setMethod("toFile", c(file = "character"),
            function(obj, file, ...) {
               con = file(file, "w")
               ans = toFile(obj, con, ...)
               on.exit(close(con))
               ans
            })

trim =
function(x)
  gsub("^[[:space:]]|[[:space:]]$", "", x)

setMethod("toFile", "RAutoDocumentation",
           function(obj, file, ...) {
              obj = obj[ sapply(obj, function(x) length(x) > 0 && nchar(trim(x)) > 0) ]
              tmp = mapply(makeSection, names(obj), obj)
              cat(unlist(tmp), sep = "\n\n", file = file)
           })

setMethod("toFile", c("RTUDocumentation", "missing"),
          function(obj, file, dir = "man", ...) {
            funFiles = sprintf("%s%s%s.Rd", dir, .Platform$file.sep, names(obj@funcs))
            classFiles = sprintf("%s%s%s_class.Rd", dir, .Platform$file.sep, names(obj@classes))
            enumFiles = sprintf("%s%s%s_enum.Rd", dir, .Platform$file.sep, names(obj@enums))

            mapply(toFile, obj@classes, classFiles)
            mapply(toFile, obj@enums, enumFiles)
            mapply(toFile, obj@funcs, funFiles)                        

            c(funFiles, classFiles, enumFiles)
          })

makeSection =
function(name, content)
{
 sprintf("\\%s{%s}", name, content)
}



documentClass =
function(def, name = def@name,  refName = sprintf("%sPtr", name))
{
  methodAliases = makeMethodAliases(name, refName)
  aliases = c(sprintf("%s-class", c(name, refName)),
              methodAliases)
  txt = list()
  txt$name = name
  txt$'alias' = aliases
  txt$'title' = sprintf("R classes to represent native data type %s as R object or reference to native type", name)
  txt$'description' = sprintf("These classes and methods provide an R user with access to the native data type %s. We define an R version of this data structure with R-level fields, and also an R class that can reference an instance of the native data type. For this reference, we define methods that make the object act as if it were a list in R so that one can access fields via the usual subsetting operators. One can also coerce from one representation to an nother and create new objects via the %s constructor function.", name, name)
  txt$'usage' = "\n"
  txt$'value' = "The names methods returns a character vector. The constructor functions create objects of the class with the same name as the constructor. The $ operator returns an object as the same class as the field, of course."
  txt$'examples' = "\n"
  txt$'keyword' = c("programming", "interface")

  ans = new("RClassDocumentation", txt)
  names(ans) = names(txt)
  ans
}

makeMethodAliases =
function(name, refName = sprintf("%sPtr", name))
{
   # $, coerce, constructor generic, constructor methods (ANY, Ref, externalptr)
   # generic constructor for refname, methods external ptr, missing
  a = c(sprintf("$,%s", refName),
        sprintf("coerce,%s,%s", refName, c(name, refName, "externalptr")),
        sprintf("coerce,%s,%s", "externalptr", refName),
        sprintf("%s,%s", name, c("ANY", "externalptr", refName)),
        sprintf("%s,%s", refName, c("missing", "externalptr")),    
        sprintf("names,%s", refName)
       )
   
  c(name, refName, sprintf("%s-method", a))
}



documentFunction =
function(obj, name = obj$name, dll = NA, ..., .paramText = list(...))
{
  if(class(obj) == "list" && is(obj[[1]], "ResolvedNativeRoutine")) {
       # handle multiple functions, creating a single document for all of them.
  }

  mutable = any(RGCCTUFFI:::mutableParams(obj))

  txt = list()

  txt$name = name
  txt$alias = name
  txt$title = sprintf("An interface to the native routine %s", name)
  txt$description = sprintf("This function allows one to invoke the native routine %s from R, passing R values as arguments to the routine.", name)
  txt$usage = ""
  argDocs = if("arguments" %in% names(.paramText)) .paramText[["arguments"]] else list()
  txt$arguments = makeArgsDoc(obj$parameters, argDocs, mutable)
  txt$value = makeValueDoc(obj, mutable)
  txt$examples = ""
  txt$keyword = c("programming", "interface")

     # Take any supplied sections
  args = .paramText
  if(length(args)) {
     i = match("arguments", names(args))
     if(!is.na(i))  
        args = args[ - i]
     txt[names(args)] = args
   }

  ans = new("RFunctionDocumentation", txt)
  names(ans) = names(txt)
  ans
}

makeValueDoc =
function(def, mutable = RGCCTUFFI:::mutableParams(def))
{
     # value, mutable parameters and the callCIF parameters to avoid returning them.
   sprintf("the native routine returns an object of class %s. %s",
           getRTypeName(def$returnType),           
           if(any(mutable))
              "if returnInputs is \\code{FALSE}, then this value is returned. Otherwise, this function returns a named list with 2 elements: 'value' as returned by the native routine, and 'inputs' which is a list containing all of the mutable parameters, i.e. pointers"
           else "")

}


makeArgsDoc =
function(parms, docs = list(), hasMutables = FALSE)
{
        #XXX Change names if necessary.
  names(parms) = fixParamNames(parms)
 
  defaults = lapply(parms, function(x) sprintf("an object of class \\code{\\link{%s-class}}", getRTypeName(x$type)))
#if(any(grepl("charPtr-class", unlist(defaults)))) recover()
  if(length(docs) == 0) {
     docs = defaults
  } else {
    if(length(names(docs))) {
      i = match(names(docs), names(defaults))
      defaults[i] = docs
      docs = defaults
    } else {
        # correct
      if(length(docs) < length(parms)) {
         defaults[seq(along = docs)] = docs
         docs = defaults
      } else {
         i = which(sapply(docs, function(x) length(x) == 0 || is.na(x)))
         if(any(i))
           docs[i] = defaults[i]
      }      
    }
  }

  docs[[".cif"]] = "the call interface object describing the signature of the native routine"
  if(hasMutables)
      docs[["returnInputs"]] = "a logical value or vector that is passed to \\code{\\link[Rffi]{callCIF}} in the Rffi package and controls whether arguments that might be modified by the routine are returned by the R function."
  docs[["\\dots"]] = "additional parameters that are passed to \\code{\\link[Rffi]{callCIF}}"

  paste(c("", sprintf("\\item{%s}{%s}", names(docs), docs)), collapse = "\n")
}


fixParamNames =
function(parms, parmNames = names(parms))
{
     if(length(parmNames) == 0)
        parmNames = sprintf("x%d", seq(along = parms))
     else {
        i = grep("^[0-9]+$", parmNames)
        if(length(i))
          parmNames[i] = sprintf("x%d", i)
     }

     parmNames
}

documentEnum =
  #
  # Have to worry about duplicate enum names across enmerations.
  #
  #
function(def, name = def@name[length(def@name)])
{
  ans = new("REnumDocumentation")

  ans$name = sprintf("%sValues", name)
  ans$alias = c(ans$name, names(def@values), sprintf("%sValues", name),
                sprintf("coerce,%s,%s-method", c("numeric", "integer", "character"), rep(name, 3)))
  ans$title = sprintf("Enumeration values and class for %s", name)
  ans$description = sprintf("We represent the C-level enumerations for the type %s with a collection of R variables and an R class that allows us to coerce from numbers and strings to the enumeration type.", name)

  ans
}

genDocumentation =
function(funcs, types, enums, paramDocs = list())
{
  funs = lapply(names(funcs), function(id) documentFunction(funcs[[id]], .paramText = paramDocs[[id]]))
  names(funs) = names(funcs)

  new("RTUDocumentation",
           classes = lapply(types, documentClass),
           funcs = funs,
           enums = lapply(enums, documentEnum))
}
