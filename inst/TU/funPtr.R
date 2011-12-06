library(Rffi)

cif = CIF(doubleType, list(sint32Type, doubleType, pointerType, pointerType), rep(FALSE, 4))


fun = getNativeSymbolInfo("myFun")$address
callCIF(cif, "runFunPtr", 5, 1.2, fun, NULL)


mine = function(val) 
          val + 1

fun.ptr =  getNativeSymbolInfo("R_myFun")$address
callCIF(cif, "runFunPtr", 5, 1.2, fun.ptr, mine)

