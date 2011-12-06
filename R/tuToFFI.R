# Maps types in GCC TU to FFI types

setGeneric("gccTUTypeToFFI",
            function(type, ...)
               standardGeneric("gccTUTypeToFFI"))

setMethod("gccTUTypeToFFI", "ResolvedTypeReference",
            function(type, ...) {
              gccTUTypeToFFI(resolveType(type), ...)
            })

setMethod("gccTUTypeToFFI", "shortIntType",
            function(type, ...) {
              sint16Type   # check for unsigned 
            })

setMethod("gccTUTypeToFFI", "intType",
            function(type, ...) {
              sint32Type   # check for unsigned qualifier or 64 bit
            })

setMethod("gccTUTypeToFFI", "doubleType",
            function(type, ...) {
              if(type@name == "float")
                floatType
              else
                doubleType
            })

setMethod("gccTUTypeToFFI", "CString",
            function(type, ...) {
              stringType
            })

setMethod("gccTUTypeToFFI", "PointerType",
            function(type, ...) {
              pointerType
            })

setMethod("gccTUTypeToFFI", "FunctionPointer",
            function(type, ...) {
              pointerType
            })


setMethod("gccTUTypeToFFI", "TypedefDefinition",
            function(type, ...) {
              gccTUTypeToFFI(type@type)
            })


setMethod("gccTUTypeToFFI", "Field",
            function(type, ...) {
              gccTUTypeToFFI(type@type)
            })

setMethod("gccTUTypeToFFI", "UnionDefinition",
            function(type, ...) {
              types = lapply(type@fields, gccTUTypeToFFI)
              sz = sapply(types, sizeof)
              i = which.max(sz)[1]
              types[[i]]
            })


setMethod("gccTUTypeToFFI", "ArrayType",
            function(type, ...) {
              elType = gccTUTypeToFFI(type@type)
              arrayType(elType, type@length)
            })


########################

setGeneric("gccTUTypeToFFITypeName",
            function(type, ...)
               standardGeneric("gccTUTypeToFFITypeName"))

setMethod("gccTUTypeToFFITypeName", "voidType",
            function(type, ...) {
              "voidType"
            })

setMethod("gccTUTypeToFFITypeName", "unsignedCharType",
            function(type, ...) {
              "uint32Type"
            })


setMethod("gccTUTypeToFFITypeName", "StructDefinition",
            function(type, ...) {
#              sprintf("%s.FFIType", type@name)
               tmp = lapply(type@fields, function(x) gccTUTypeToFFITypeName(x@type))
               makeFFITypeCode(tmp)
            })




setMethod("gccTUTypeToFFITypeName", "shortIntType",
            function(type, ...) {
              "sint16Type"   # check for unsigned 
            })


setMethod("gccTUTypeToFFITypeName", "charType",
            function(type, ...) {
              "sint8Type"   # check for unsigned qualifier or 64 bit
            })

setMethod("gccTUTypeToFFITypeName", "intType",
            function(type, ...) {
              "sint32Type"   # check for unsigned qualifier or 64 bit
            })

setMethod("gccTUTypeToFFITypeName", "doubleType",
            function(type, ...) {
              if(type@name == "float")
                "floatType"
              else
                "doubleType"
            })

setMethod("gccTUTypeToFFITypeName", "CString",
            function(type, ...) {
              "stringType"
            })

setMethod("gccTUTypeToFFITypeName", "PointerType",
            function(type, ...) {
              "pointerType"
            })


setMethod("gccTUTypeToFFITypeName", "UnionDefinition",
            function(type, ...) {
              # warning("Unhandled union definition")
                    # Need to find the type that is the biggest.
              types = lapply(type@fields, function(x) gccTUTypeToFFI(x@type))
              sz = sapply(types, sizeof)
              i = which.max(sz)[1] 
              gccTUTypeToFFITypeName( type@fields[[ i ]]@type )
            })


setMethod("gccTUTypeToFFITypeName", "ResolvedTypeReference",
            function(type, ...) {
              gccTUTypeToFFITypeName(resolveType(type), ...)
            })

setMethod("gccTUTypeToFFITypeName", "ArrayType",
            function(type, ...) {
              if(is(type@type, "charType"))
                  sprintf("stringArrayType(%d)", type@length)
              else
                 sprintf("arrayType(%s, %d)",
                           gccTUTypeToFFITypeName(type@type), type@length)
            })



setMethod("gccTUTypeToFFITypeName", "EnumerationDefinition",
            function(type, ...) {
               #XXX Use the name if we are going to define an explicit type for this.
              # type@name[1]
              "sint32Type"
            })

setMethod("gccTUTypeToFFITypeName", "FunctionPointer",
            function(type, ...) {
               "pointerType"
            })

setMethod("gccTUTypeToFFITypeName", "TypedefDefinition",
            function(type, ...) {
                # If this is a typedef for primitive type, use the primitive type rather than
                # the name.
              # type@name[1]
              gccTUTypeToFFITypeName(type@type, ...)
            })
