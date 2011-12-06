
if(require(RGCCTranslationUnit)) {

 tu = parseTU("test.c.001t.tu")

 r = getRoutines(tu, "test")
 names(r)

 
  gsp = resolveType(r$getStructP, tu)

  library(Rffi)
  cif = CIF(pointerType)

  ref = callCIF(cif, "getStructP")

  # Now let's look at the return type and specifically the type it points to

 gsp$returnType@type = resolveType(gsp$returnType@type)
 class(gsp$returnType@type)
 tmp = gsp$returnType@type
 names( tmp@fields)
 sapply(tmp@fields, function(x) class(x@type))

 source("tuToFFI.R")

 fieldTypes = lapply(tmp@fields, function(x) gccTUTypeToFFI(x@type))
 MyStruct.type = structType(fieldTypes)
 getStructValue(ref, MyStruct.type)

  # Now let's try to define a class for the struct and define operators for that
  # class

  source("defClasses.R")
  source("tuTORType.R") 
  cd = defStructClass(tmp)
  define(cd)

  val = as(ref, "MyStruct")
  r = as(ref, "MyStructRef")
  names(r)
  r$i
  r$d

  as(r, "MyStruct")

   # constructors
  MyStruct(ref) 
  MyStruct(r) 
  MyStruct(i = 4, d = -10.3)  
}

