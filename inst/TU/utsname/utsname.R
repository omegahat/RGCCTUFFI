library(Rffi)
library(RGCCTranslationUnit)
tu = parseTU("utsname.c.001t.tu")
ds = getDataStructures(tu)
utsname = resolveType(ds$utsname, tu)

code = defStructClass(utsname)
define(code)
r = getRoutines(tu)
uname = resolveType(r$uname, tu)
define(fun <- createRFunc(uname))

cat("library(Rffi)",
    unlist(code, fun), sep = "\n", file = "utsnameCode.R")

if(FALSE) {
u = utsnameRef() # allocate a pointer
uname(u) # ptr
names(u)
u$sysname
u$nodename
u$release
u$version
u$machine

u[]

u[c("nodename", "release")]
u[["release"]]

sapply(names(u), function(id) u[[id]])
}
