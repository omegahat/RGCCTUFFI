
setGeneric("genCode",
             function(x, name = "", ...)
                 standardGeneric("genCode"))

setMethod("genCode", "ResolvedTypeReference",
           function(x, name = "", ...) {
              genCode(resolveType(x), name = name, ...)
           })


setMethod("genCode", "EnumerationDefinition",
           function(x, name = x@name, ...) {
              con = textConnection('xx', 'w', local = TRUE)
              on.exit(close(con))
              writeCode(x, "r", con)
              textConnectionValue(con)
           })

setMethod("genCode", "StructDefinition",
           function(x, name = x@name, ...) {

              if(name == "")
                 name = x@name
              defStructClass(x, name, refClassName = getRRefTypeName(x), ...)
           })

setMethod("genCode", "TypedefDefinition",
           function(x, name = x@name, ...) {
              genCode(x@type, name = if(length(name) && name != "") name else x@type@name, ...)
           })
            
