#sapply(paste("../../R/", c("createRFunc.R", "tuToRType.R", "tuToFFI.R", "genCode.R", "defClasses.R"), sep = ""), source)


genTUInterface =
function(fileName, tu = parseTU(fileName), filter = character(),
         funcs = getRoutines(tu, filter),
         ds = getDataStructures(tu, filter),
         pattern, useClosure = TRUE, useGlobalFFIType = useClosure, useGlobalCIF = useClosure,
         putGlobalsInLoad = useGlobalCIF, genDoc = !missing(paramDocs), paramDocs = list(), ...)
{
  library(RGCCTranslationUnit)

  if(!missing(pattern)) {
      funcs = funcs[grepl(pattern, names(funcs))]
      ds = ds[grepl(pattern, names(ds))]      
  }

  rfuncs = lapply(funcs, resolveType, tu)
  
      # should compute returnInputs from the defn.
  funcs.code = lapply(rfuncs, function(x)
                                createRFunc(x, useClosure = useClosure,
                                               useGlobalCIF = useGlobalCIF))

  rds = lapply(ds, resolveType, tu)
  ds.code = lapply(rds, genCode, useClosure = useClosure, useGlobalFFIType = useGlobalFFIType)
  
  ans = list(funcs = funcs.code, dataStructs = ds.code)

  if(genDoc) {
     enums = lapply(getEnumerations(tu), resolveType, tu)
assign("a", list(rfuncs = rfuncs, rds = rds, enums = enums, tu = tu), globalenv())
     ans$docs = genDocumentation(rfuncs, rds, enums, paramDocs, ...) ##
  }
  
  ans
}








#

if(FALSE) {
  library(Rffi)
  k = genTUInterface("Rgeoip.c.001t.tu", pattern = "^GeoIP")
  cat("library(RAutoGenRunTime)",
      "library(Rffi)",
      "dyn.load('/usr/local/lib/libGeoIP.dylib')",
      unlist(k),
    sep = "\n", file = "../../R/RGeoIP.R")

  source("../../R/RGeoIP.R")
  db = GeoIP_open("/usr/local/share/GeoIP/GeoLiteCity.dat", GEOIP_STANDARD, returnInputs = FALSE)
  names(db)
  db$file_path

  r = GeoIP_record_by_name(db, "www.omegahat.org", returnInputs = FALSE)
  names(r)
  r$longitude
  r$latitude
#XXX  r[c("longitude", "latitude")]
}
