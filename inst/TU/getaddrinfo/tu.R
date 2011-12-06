library(Rffi)
library(RGCCTranslationUnit)
library(RGCCTUFFI)

tu = parseTU("getaddrinfo.c.001t.tu")
r = getRoutines(tu)
info = r$getaddrinfo
info = resolveType(info, tu)

ds =  getDataStructures(tu)

#hints = Rffi:::defStructClass(info$parameters[[3]]$type)
#addr = Rffi:::defStructClass(info$parameters[[4]]$type)


addrinfo = resolveType(ds$addrinfo, tu)
addrinfo@fields$ai_next@type = new("PointerType", type = addrinfo)

code = c(defStructClass(addrinfo),
         createRFunc(info))


define(code)

cat("library(Rffi)",
    unlist(code), file = "genCode.R", sep = "\n")



if(FALSE) {
  source("genCode.R")
  ptr = alloc(100)
  getaddrinfo("www.omegahat.org", character(), NULL, addrOf(ptr))
  val = new("addrinfoPtr", ref = ptr)
}
