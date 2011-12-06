setGeneric("gccTUTypeToRClass",
            function(type, ...)
               standardGeneric("gccTUTypeToRClass"))

setMethod("gccTUTypeToRClass", "ResolvedTypeReference",
            function(type, ...)
              gccTUTypeToRClass(resolveType(type), ...))

setMethod("gccTUTypeToRClass", "shortIntType",
            function(type, ...) {
              "integer"   # check for unsigned 
            })

setMethod("gccTUTypeToRClass", "intType",
            function(type, ...) {
              "integer"   # check for unsigned qualifier or 64 bit
            })

setMethod("gccTUTypeToRClass", "doubleType",
            function(type, ...) {
              "numeric"
            })

setMethod("gccTUTypeToRClass", "CString",
            function(type, ...) {
              "character"
            })


setMethod("gccTUTypeToRClass", "UnionDefinition",
            function(type, ...) {
              "integer"   # XXXXXX
            })

setMethod("gccTUTypeToRClass", "PointerType",
            function(type, ...) {
                type@type@name
            })

setMethod("gccTUTypeToRClass", "EnumerationDefinition",
            function(type, ...) {
                type@name
            })

setMethod("gccTUTypeToRClass", "TypedefDefinition",
            function(type, ...) {
                type@type@name
                # gccTUTypeToRClass(type@type)
            })

setMethod("gccTUTypeToRClass", "StructDefinition",
            function(type, ...) {
                type@name
                # gccTUTypeToRClass(type@type)
            })

setMethod("gccTUTypeToRClass", "ArrayType",
            function(type, ...) {
              if(is(type@type, "charType"))
                  return("character")
              
               ans = gccTUTypeToRClass(type@type)
               if(is.na(ans) || ans == "")
                 ans = "list"
               ans
            })
