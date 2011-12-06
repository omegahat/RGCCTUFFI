library(Rffi)
library(RAutoGenRunTime)
dyn.load('/usr/local/lib/libGeoIP.dylib')
`GeoIP_setup_custom_directory` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_setup_custom_directory.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_setup_custom_directory')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_setup_custom_directory')) getNativeSymbolInfo('GeoIP_setup_custom_directory')$address else NULL, .GeoIP_setup_custom_directory.cif = CIF(voidType, list(stringType)))
`GeoIP_open_type` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_open_type.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_open_type')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRef', ref = ans$value)
  else
     ans = new('GeoIPRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_open_type')) getNativeSymbolInfo('GeoIP_open_type')$address else NULL, .GeoIP_open_type.cif = CIF(pointerType, list(sint32Type, sint32Type)))
`GeoIP_new` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_new.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_new')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRef', ref = ans$value)
  else
     ans = new('GeoIPRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_new')) getNativeSymbolInfo('GeoIP_new')$address else NULL, .GeoIP_new.cif = CIF(pointerType, list(sint32Type)))
`GeoIP_open` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_open.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_open')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRef', ref = ans$value)
  else
     ans = new('GeoIPRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_open')) getNativeSymbolInfo('GeoIP_open')$address else NULL, .GeoIP_open.cif = CIF(pointerType, list(stringType, sint32Type)))
`GeoIP_db_avail` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_db_avail.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_db_avail')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_db_avail')) getNativeSymbolInfo('GeoIP_db_avail')$address else NULL, .GeoIP_db_avail.cif = CIF(sint32Type, list(sint32Type)))
`GeoIP_delete` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_delete.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_delete')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_delete')) getNativeSymbolInfo('GeoIP_delete')$address else NULL, .GeoIP_delete.cif = CIF(voidType, list(pointerType)))
`GeoIP_country_code_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code_by_addr')) getNativeSymbolInfo('GeoIP_country_code_by_addr')$address else NULL, .GeoIP_country_code_by_addr.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_country_code_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code_by_name')) getNativeSymbolInfo('GeoIP_country_code_by_name')$address else NULL, .GeoIP_country_code_by_name.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_country_code3_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code3_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code3_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code3_by_addr')) getNativeSymbolInfo('GeoIP_country_code3_by_addr')$address else NULL, .GeoIP_country_code3_by_addr.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_country_code3_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code3_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code3_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code3_by_name')) getNativeSymbolInfo('GeoIP_country_code3_by_name')$address else NULL, .GeoIP_country_code3_by_name.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_country_name_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_name_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_name_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_name_by_addr')) getNativeSymbolInfo('GeoIP_country_name_by_addr')$address else NULL, .GeoIP_country_name_by_addr.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_country_name_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_name_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_name_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_name_by_name')) getNativeSymbolInfo('GeoIP_country_name_by_name')$address else NULL, .GeoIP_country_name_by_name.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_country_name_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_name_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_name_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_name_by_ipnum')) getNativeSymbolInfo('GeoIP_country_name_by_ipnum')$address else NULL, .GeoIP_country_name_by_ipnum.cif = CIF(stringType, list(pointerType, doubleType)))
`GeoIP_country_code_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code_by_ipnum')) getNativeSymbolInfo('GeoIP_country_code_by_ipnum')$address else NULL, .GeoIP_country_code_by_ipnum.cif = CIF(stringType, list(pointerType, doubleType)))
`GeoIP_country_code3_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code3_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code3_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code3_by_ipnum')) getNativeSymbolInfo('GeoIP_country_code3_by_ipnum')$address else NULL, .GeoIP_country_code3_by_ipnum.cif = CIF(stringType, list(pointerType, doubleType)))
`GeoIP_country_name_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_name_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_name_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_name_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_country_name_by_ipnum_v6')$address else NULL, .GeoIP_country_name_by_ipnum_v6.cif = CIF(stringType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_country_code_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_country_code_by_ipnum_v6')$address else NULL, .GeoIP_country_code_by_ipnum_v6.cif = CIF(stringType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_country_code3_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_code3_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_code3_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_country_code3_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_country_code3_by_ipnum_v6')$address else NULL, .GeoIP_country_code3_by_ipnum_v6.cif = CIF(stringType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_country_id_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_id_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_id_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_country_id_by_addr')) getNativeSymbolInfo('GeoIP_country_id_by_addr')$address else NULL, .GeoIP_country_id_by_addr.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_country_id_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_country_id_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_country_id_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_country_id_by_name')) getNativeSymbolInfo('GeoIP_country_id_by_name')$address else NULL, .GeoIP_country_id_by_name.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_org_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_org_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_org_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_org_by_addr')) getNativeSymbolInfo('GeoIP_org_by_addr')$address else NULL, .GeoIP_org_by_addr.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_org_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_org_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_org_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_org_by_name')) getNativeSymbolInfo('GeoIP_org_by_name')$address else NULL, .GeoIP_org_by_name.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_org_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_org_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_org_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_org_by_ipnum')) getNativeSymbolInfo('GeoIP_org_by_ipnum')$address else NULL, .GeoIP_org_by_ipnum.cif = CIF(stringType, list(pointerType, doubleType)))
`GeoIP_org_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_org_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_org_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_org_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_org_by_ipnum_v6')$address else NULL, .GeoIP_org_by_ipnum_v6.cif = CIF(stringType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_org_by_addr_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_org_by_addr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_org_by_addr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_org_by_addr_v6')) getNativeSymbolInfo('GeoIP_org_by_addr_v6')$address else NULL, .GeoIP_org_by_addr_v6.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_org_by_name_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_org_by_name_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_org_by_name_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_org_by_name_v6')) getNativeSymbolInfo('GeoIP_org_by_name_v6')$address else NULL, .GeoIP_org_by_name_v6.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_id_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_addr')) getNativeSymbolInfo('GeoIP_id_by_addr')$address else NULL, .GeoIP_id_by_addr.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_id_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_name')) getNativeSymbolInfo('GeoIP_id_by_name')$address else NULL, .GeoIP_id_by_name.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_id_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_ipnum')) getNativeSymbolInfo('GeoIP_id_by_ipnum')$address else NULL, .GeoIP_id_by_ipnum.cif = CIF(sint32Type, list(pointerType, doubleType)))
`GeoIP_id_by_addr_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_addr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_addr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_addr_v6')) getNativeSymbolInfo('GeoIP_id_by_addr_v6')$address else NULL, .GeoIP_id_by_addr_v6.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_id_by_name_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_name_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_name_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_name_v6')) getNativeSymbolInfo('GeoIP_id_by_name_v6')$address else NULL, .GeoIP_id_by_name_v6.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_id_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_id_by_ipnum_v6')$address else NULL, .GeoIP_id_by_ipnum_v6.cif = CIF(sint32Type, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_region_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRegionRef', ref = ans$value)
  else
     ans = new('GeoIPRegionRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_by_addr')) getNativeSymbolInfo('GeoIP_region_by_addr')$address else NULL, .GeoIP_region_by_addr.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_region_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRegionRef', ref = ans$value)
  else
     ans = new('GeoIPRegionRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_by_name')) getNativeSymbolInfo('GeoIP_region_by_name')$address else NULL, .GeoIP_region_by_name.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_region_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRegionRef', ref = ans$value)
  else
     ans = new('GeoIPRegionRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_by_ipnum')) getNativeSymbolInfo('GeoIP_region_by_ipnum')$address else NULL, .GeoIP_region_by_ipnum.cif = CIF(pointerType, list(pointerType, doubleType)))
`GeoIP_region_by_addr_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_by_addr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_by_addr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRegionRef', ref = ans$value)
  else
     ans = new('GeoIPRegionRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_by_addr_v6')) getNativeSymbolInfo('GeoIP_region_by_addr_v6')$address else NULL, .GeoIP_region_by_addr_v6.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_region_by_name_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_by_name_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_by_name_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRegionRef', ref = ans$value)
  else
     ans = new('GeoIPRegionRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_by_name_v6')) getNativeSymbolInfo('GeoIP_region_by_name_v6')$address else NULL, .GeoIP_region_by_name_v6.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_region_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRegionRef', ref = ans$value)
  else
     ans = new('GeoIPRegionRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_region_by_ipnum_v6')$address else NULL, .GeoIP_region_by_ipnum_v6.cif = CIF(pointerType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIPRegion_delete` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIPRegion_delete.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIPRegion_delete')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIPRegion_delete')) getNativeSymbolInfo('GeoIPRegion_delete')$address else NULL, .GeoIPRegion_delete.cif = CIF(voidType, list(pointerType)))
`GeoIP_assign_region_by_inetaddr` =
makeClosure( function(x1, x2, x3,  returnInputs = TRUE, ..., .cif = .GeoIP_assign_region_by_inetaddr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_assign_region_by_inetaddr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, x3, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_assign_region_by_inetaddr')) getNativeSymbolInfo('GeoIP_assign_region_by_inetaddr')$address else NULL, .GeoIP_assign_region_by_inetaddr.cif = CIF(voidType, list(pointerType, doubleType, pointerType)))
`GeoIP_assign_region_by_inetaddr_v6` =
makeClosure( function(x1, x2, x3,  returnInputs = TRUE, ..., .cif = .GeoIP_assign_region_by_inetaddr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_assign_region_by_inetaddr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, x3, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_assign_region_by_inetaddr_v6')) getNativeSymbolInfo('GeoIP_assign_region_by_inetaddr_v6')$address else NULL, .GeoIP_assign_region_by_inetaddr_v6.cif = CIF(voidType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))), pointerType)))
`GeoIP_name_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_ipnum')) getNativeSymbolInfo('GeoIP_name_by_ipnum')$address else NULL, .GeoIP_name_by_ipnum.cif = CIF(stringType, list(pointerType, doubleType)))
`GeoIP_name_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_addr')) getNativeSymbolInfo('GeoIP_name_by_addr')$address else NULL, .GeoIP_name_by_addr.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_name_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_name')) getNativeSymbolInfo('GeoIP_name_by_name')$address else NULL, .GeoIP_name_by_name.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_name_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_name_by_ipnum_v6')$address else NULL, .GeoIP_name_by_ipnum_v6.cif = CIF(stringType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_name_by_addr_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_addr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_addr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_addr_v6')) getNativeSymbolInfo('GeoIP_name_by_addr_v6')$address else NULL, .GeoIP_name_by_addr_v6.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_name_by_name_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_name_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_name_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_name_v6')) getNativeSymbolInfo('GeoIP_name_by_name_v6')$address else NULL, .GeoIP_name_by_name_v6.cif = CIF(stringType, list(pointerType, stringType)))
`GeoIP_code_by_id` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_code_by_id.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_code_by_id')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_code_by_id')) getNativeSymbolInfo('GeoIP_code_by_id')$address else NULL, .GeoIP_code_by_id.cif = CIF(stringType, list(sint32Type)))
`GeoIP_code3_by_id` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_code3_by_id.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_code3_by_id')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_code3_by_id')) getNativeSymbolInfo('GeoIP_code3_by_id')$address else NULL, .GeoIP_code3_by_id.cif = CIF(stringType, list(sint32Type)))
`GeoIP_name_by_id` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_name_by_id.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_name_by_id')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_name_by_id')) getNativeSymbolInfo('GeoIP_name_by_id')$address else NULL, .GeoIP_name_by_id.cif = CIF(stringType, list(sint32Type)))
`GeoIP_continent_by_id` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_continent_by_id.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_continent_by_id')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_continent_by_id')) getNativeSymbolInfo('GeoIP_continent_by_id')$address else NULL, .GeoIP_continent_by_id.cif = CIF(stringType, list(sint32Type)))
`GeoIP_id_by_code` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_id_by_code.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_id_by_code')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_id_by_code')) getNativeSymbolInfo('GeoIP_id_by_code')$address else NULL, .GeoIP_id_by_code.cif = CIF(sint32Type, list(stringType)))
`GeoIP_num_countries` =
makeClosure( function( returnInputs = TRUE, ..., .cif = .GeoIP_num_countries.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_num_countries')$address
 ans =  callCIF(.cif, .sym,  ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_num_countries')) getNativeSymbolInfo('GeoIP_num_countries')$address else NULL, .GeoIP_num_countries.cif = CIF(sint32Type, list()))
`GeoIP_database_info` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_database_info.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_database_info')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_database_info')) getNativeSymbolInfo('GeoIP_database_info')$address else NULL, .GeoIP_database_info.cif = CIF(stringType, list(pointerType)))
`GeoIP_database_edition` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_database_edition.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_database_edition')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_database_edition')) getNativeSymbolInfo('GeoIP_database_edition')$address else NULL, .GeoIP_database_edition.cif = CIF(uint32Type, list(pointerType)))
`GeoIP_charset` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_charset.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_charset')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_charset')) getNativeSymbolInfo('GeoIP_charset')$address else NULL, .GeoIP_charset.cif = CIF(sint32Type, list(pointerType)))
`GeoIP_set_charset` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_set_charset.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_set_charset')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_set_charset')) getNativeSymbolInfo('GeoIP_set_charset')$address else NULL, .GeoIP_set_charset.cif = CIF(sint32Type, list(pointerType, sint32Type)))
`GeoIP_last_netmask` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_last_netmask.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_last_netmask')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_last_netmask')) getNativeSymbolInfo('GeoIP_last_netmask')$address else NULL, .GeoIP_last_netmask.cif = CIF(sint32Type, list(pointerType)))
`GeoIP_range_by_ip` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_range_by_ip.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_range_by_ip')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_range_by_ip')) getNativeSymbolInfo('GeoIP_range_by_ip')$address else NULL, .GeoIP_range_by_ip.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_range_by_ip_delete` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_range_by_ip_delete.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_range_by_ip_delete')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_range_by_ip_delete')) getNativeSymbolInfo('GeoIP_range_by_ip_delete')$address else NULL, .GeoIP_range_by_ip_delete.cif = CIF(voidType, list(pointerType)))
`GeoIP_region_name_by_code` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_region_name_by_code.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_region_name_by_code')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_region_name_by_code')) getNativeSymbolInfo('GeoIP_region_name_by_code')$address else NULL, .GeoIP_region_name_by_code.cif = CIF(stringType, list(stringType, stringType)))
`GeoIP_time_zone_by_country_and_region` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_time_zone_by_country_and_region.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_time_zone_by_country_and_region')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('charRef', ref = ans$value)
  else
     ans = new('charRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_time_zone_by_country_and_region')) getNativeSymbolInfo('GeoIP_time_zone_by_country_and_region')$address else NULL, .GeoIP_time_zone_by_country_and_region.cif = CIF(stringType, list(stringType, stringType)))
`GeoIP_record_by_ipnum` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_by_ipnum.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_by_ipnum')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRecordRef', ref = ans$value)
  else
     ans = new('GeoIPRecordRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_record_by_ipnum')) getNativeSymbolInfo('GeoIP_record_by_ipnum')$address else NULL, .GeoIP_record_by_ipnum.cif = CIF(pointerType, list(pointerType, doubleType)))
`GeoIP_record_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRecordRef', ref = ans$value)
  else
     ans = new('GeoIPRecordRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_record_by_addr')) getNativeSymbolInfo('GeoIP_record_by_addr')$address else NULL, .GeoIP_record_by_addr.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_record_by_name` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_by_name.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_by_name')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRecordRef', ref = ans$value)
  else
     ans = new('GeoIPRecordRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_record_by_name')) getNativeSymbolInfo('GeoIP_record_by_name')$address else NULL, .GeoIP_record_by_name.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_record_by_ipnum_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_by_ipnum_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_by_ipnum_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRecordRef', ref = ans$value)
  else
     ans = new('GeoIPRecordRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_record_by_ipnum_v6')) getNativeSymbolInfo('GeoIP_record_by_ipnum_v6')$address else NULL, .GeoIP_record_by_ipnum_v6.cif = CIF(pointerType, list(pointerType, structType(list('__u6_addr' = arrayType(sint32Type, 16))))))
`GeoIP_record_by_addr_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_by_addr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_by_addr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRecordRef', ref = ans$value)
  else
     ans = new('GeoIPRecordRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_record_by_addr_v6')) getNativeSymbolInfo('GeoIP_record_by_addr_v6')$address else NULL, .GeoIP_record_by_addr_v6.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_record_by_name_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_by_name_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_by_name_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = new('GeoIPRecordRef', ref = ans$value)
  else
     ans = new('GeoIPRecordRef', ref = ans)
   ans
}
, .sym = if(is.loaded('GeoIP_record_by_name_v6')) getNativeSymbolInfo('GeoIP_record_by_name_v6')$address else NULL, .GeoIP_record_by_name_v6.cif = CIF(pointerType, list(pointerType, stringType)))
`GeoIP_record_id_by_addr` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_id_by_addr.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_id_by_addr')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_record_id_by_addr')) getNativeSymbolInfo('GeoIP_record_id_by_addr')$address else NULL, .GeoIP_record_id_by_addr.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_record_id_by_addr_v6` =
makeClosure( function(x1, x2,  returnInputs = TRUE, ..., .cif = .GeoIP_record_id_by_addr_v6.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_record_id_by_addr_v6')$address
 ans =  callCIF(.cif, .sym,  x1, x2, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_record_id_by_addr_v6')) getNativeSymbolInfo('GeoIP_record_id_by_addr_v6')$address else NULL, .GeoIP_record_id_by_addr_v6.cif = CIF(sint32Type, list(pointerType, stringType)))
`GeoIP_init_record_iter` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIP_init_record_iter.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_init_record_iter')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_init_record_iter')) getNativeSymbolInfo('GeoIP_init_record_iter')$address else NULL, .GeoIP_init_record_iter.cif = CIF(sint32Type, list(pointerType)))
`GeoIP_next_record` =
makeClosure( function(x1, x2, x3,  returnInputs = TRUE, ..., .cif = .GeoIP_next_record.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIP_next_record')$address
 ans =  callCIF(.cif, .sym,  x1, x2, x3, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIP_next_record')) getNativeSymbolInfo('GeoIP_next_record')$address else NULL, .GeoIP_next_record.cif = CIF(sint32Type, list(pointerType, pointerType, pointerType)))
`GeoIPRecord_delete` =
makeClosure( function(x1,  returnInputs = TRUE, ..., .cif = .GeoIPRecord_delete.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('GeoIPRecord_delete')$address
 ans =  callCIF(.cif, .sym,  x1, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('GeoIPRecord_delete')) getNativeSymbolInfo('GeoIPRecord_delete')$address else NULL, .GeoIPRecord_delete.cif = CIF(voidType, list(pointerType)))
setClass('GeoIPTag', representation('GeoIPDatabase' = 'FILE', 'file_path' = 'character', 'cache' = 'unsigned char', 'index_cache' = 'unsigned char', 'databaseSegments' = 'unsigned int', 'databaseType' = 'integer', 'mtime' = 'integer', 'flags' = 'integer', 'size' = 'integer', 'record_length' = 'integer', 'charset' = 'integer', 'record_iter' = 'integer', 'netmask' = 'integer', 'last_mtime_check' = 'integer'))
setClass('GeoIPTagRef', contains = 'RCReference')
setMethod('$', 'GeoIPTagRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIPTag.FFIType)
}, '.GeoIPTag.FFIType' = structType(list('GeoIPDatabase' = pointerType, 'file_path' = stringType, 'cache' = pointerType, 'index_cache' = pointerType, 'databaseSegments' = pointerType, 'databaseType' = sint32Type, 'mtime' = sint32Type, 'flags' = sint32Type, 'size' = sint32Type, 'record_length' = sint32Type, 'charset' = sint32Type, 'record_iter' = sint32Type, 'netmask' = sint32Type, 'last_mtime_check' = sint32Type))))
setAs('GeoIPTagRef', 'GeoIPTag', function(from) as(from@ref, 'GeoIPTag'))
setAs('externalptr', 'GeoIPTagRef', function(from) new('GeoIPTagRef', ref = from))
setAs('externalptr', 'GeoIPTag', makeClosure(function(from) setSlots( getStructValue(from, .GeoIPTag.FFIType), new('GeoIPTag')), '.GeoIPTag.FFIType' = structType(list('GeoIPDatabase' = pointerType, 'file_path' = stringType, 'cache' = pointerType, 'index_cache' = pointerType, 'databaseSegments' = pointerType, 'databaseType' = sint32Type, 'mtime' = sint32Type, 'flags' = sint32Type, 'size' = sint32Type, 'record_length' = sint32Type, 'charset' = sint32Type, 'record_iter' = sint32Type, 'netmask' = sint32Type, 'last_mtime_check' = sint32Type))))
setGeneric('GeoIPTag', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIPTag')) standardGeneric('GeoIPTag'))
setMethod('GeoIPTag', 'ANY', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIPTag')) {
if(!missing(`GeoIPDatabase`))  .obj@`GeoIPDatabase` = as(`GeoIPDatabase`, 'FILE')
if(!missing(`file_path`))  .obj@`file_path` = as(`file_path`, 'character')
if(!missing(`cache`))  .obj@`cache` = as(`cache`, 'unsigned char')
if(!missing(`index_cache`))  .obj@`index_cache` = as(`index_cache`, 'unsigned char')
if(!missing(`databaseSegments`))  .obj@`databaseSegments` = as(`databaseSegments`, 'unsigned int')
if(!missing(`databaseType`))  .obj@`databaseType` = as(`databaseType`, 'integer')
if(!missing(`mtime`))  .obj@`mtime` = as(`mtime`, 'integer')
if(!missing(`flags`))  .obj@`flags` = as(`flags`, 'integer')
if(!missing(`size`))  .obj@`size` = as(`size`, 'integer')
if(!missing(`record_length`))  .obj@`record_length` = as(`record_length`, 'integer')
if(!missing(`charset`))  .obj@`charset` = as(`charset`, 'integer')
if(!missing(`record_iter`))  .obj@`record_iter` = as(`record_iter`, 'integer')
if(!missing(`netmask`))  .obj@`netmask` = as(`netmask`, 'integer')
if(!missing(`last_mtime_check`))  .obj@`last_mtime_check` = as(`last_mtime_check`, 'integer')
.obj})
setMethod('GeoIPTag', 'externalptr', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIPTag')) as(`GeoIPDatabase`, 'GeoIPTag'))
setMethod('GeoIPTag', 'GeoIPTagRef', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIPTag')) as(`GeoIPDatabase`, 'GeoIPTag'))
GeoIPTagRef = function(x) new('GeoIPTagRef', ref = x)
setMethod('names', 'GeoIPTagRef', function(x) c('GeoIPDatabase', 'file_path', 'cache', 'index_cache', 'databaseSegments', 'databaseType', 'mtime', 'flags', 'size', 'record_length', 'charset', 'record_iter', 'netmask', 'last_mtime_check'))
setClass('GeoIP', representation('GeoIPDatabase' = 'FILE', 'file_path' = 'character', 'cache' = 'unsigned char', 'index_cache' = 'unsigned char', 'databaseSegments' = 'unsigned int', 'databaseType' = 'integer', 'mtime' = 'integer', 'flags' = 'integer', 'size' = 'integer', 'record_length' = 'integer', 'charset' = 'integer', 'record_iter' = 'integer', 'netmask' = 'integer', 'last_mtime_check' = 'integer'))
setClass('GeoIPRef', contains = 'RCReference')
setMethod('$', 'GeoIPRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIP.FFIType)
}, '.GeoIP.FFIType' = structType(list('GeoIPDatabase' = pointerType, 'file_path' = stringType, 'cache' = pointerType, 'index_cache' = pointerType, 'databaseSegments' = pointerType, 'databaseType' = sint32Type, 'mtime' = sint32Type, 'flags' = sint32Type, 'size' = sint32Type, 'record_length' = sint32Type, 'charset' = sint32Type, 'record_iter' = sint32Type, 'netmask' = sint32Type, 'last_mtime_check' = sint32Type))))
setAs('GeoIPRef', 'GeoIP', function(from) as(from@ref, 'GeoIP'))
setAs('externalptr', 'GeoIPRef', function(from) new('GeoIPRef', ref = from))
setAs('externalptr', 'GeoIP', makeClosure(function(from) setSlots( getStructValue(from, .GeoIP.FFIType), new('GeoIP')), '.GeoIP.FFIType' = structType(list('GeoIPDatabase' = pointerType, 'file_path' = stringType, 'cache' = pointerType, 'index_cache' = pointerType, 'databaseSegments' = pointerType, 'databaseType' = sint32Type, 'mtime' = sint32Type, 'flags' = sint32Type, 'size' = sint32Type, 'record_length' = sint32Type, 'charset' = sint32Type, 'record_iter' = sint32Type, 'netmask' = sint32Type, 'last_mtime_check' = sint32Type))))
setGeneric('GeoIP', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIP')) standardGeneric('GeoIP'))
setMethod('GeoIP', 'ANY', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIP')) {
if(!missing(`GeoIPDatabase`))  .obj@`GeoIPDatabase` = as(`GeoIPDatabase`, 'FILE')
if(!missing(`file_path`))  .obj@`file_path` = as(`file_path`, 'character')
if(!missing(`cache`))  .obj@`cache` = as(`cache`, 'unsigned char')
if(!missing(`index_cache`))  .obj@`index_cache` = as(`index_cache`, 'unsigned char')
if(!missing(`databaseSegments`))  .obj@`databaseSegments` = as(`databaseSegments`, 'unsigned int')
if(!missing(`databaseType`))  .obj@`databaseType` = as(`databaseType`, 'integer')
if(!missing(`mtime`))  .obj@`mtime` = as(`mtime`, 'integer')
if(!missing(`flags`))  .obj@`flags` = as(`flags`, 'integer')
if(!missing(`size`))  .obj@`size` = as(`size`, 'integer')
if(!missing(`record_length`))  .obj@`record_length` = as(`record_length`, 'integer')
if(!missing(`charset`))  .obj@`charset` = as(`charset`, 'integer')
if(!missing(`record_iter`))  .obj@`record_iter` = as(`record_iter`, 'integer')
if(!missing(`netmask`))  .obj@`netmask` = as(`netmask`, 'integer')
if(!missing(`last_mtime_check`))  .obj@`last_mtime_check` = as(`last_mtime_check`, 'integer')
.obj})
setMethod('GeoIP', 'externalptr', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIP')) as(`GeoIPDatabase`, 'GeoIP'))
setMethod('GeoIP', 'GeoIPRef', function(`GeoIPDatabase`, `file_path`, `cache`, `index_cache`, `databaseSegments`, `databaseType`, `mtime`, `flags`, `size`, `record_length`, `charset`, `record_iter`, `netmask`, `last_mtime_check`, .obj = new('GeoIP')) as(`GeoIPDatabase`, 'GeoIP'))
GeoIPRef = function(x) new('GeoIPRef', ref = x)
setMethod('names', 'GeoIPRef', function(x) c('GeoIPDatabase', 'file_path', 'cache', 'index_cache', 'databaseSegments', 'databaseType', 'mtime', 'flags', 'size', 'record_length', 'charset', 'record_iter', 'netmask', 'last_mtime_check'))
setClass('GeoIPCharset', contains = 'EnumValue')
`GeoIPCharsetValues` = EnumDef('GeoIPCharset', structure(as.integer(c(0,
1)),
names = c("GEOIP_CHARSET_ISO_8859_1",
"GEOIP_CHARSET_UTF8")))


setAs('numeric', 'GeoIPCharset', function(from)  asEnumValue(from, `GeoIPCharsetValues`, 'GeoIPCharset', prefix = "GEOIP_CHARSET_"))
setAs('character', 'GeoIPCharset', function(from)  asEnumValue(from, `GeoIPCharsetValues`, 'GeoIPCharset', prefix = "GEOIP_CHARSET_"))
setAs('integer', 'GeoIPCharset', function(from)  asEnumValue(from, `GeoIPCharsetValues`, 'GeoIPCharset', prefix = "GEOIP_CHARSET_"))


`GEOIP_CHARSET_ISO_8859_1` <- GenericEnumValue('GEOIP_CHARSET_ISO_8859_1', 0, 'GeoIPCharset')
`GEOIP_CHARSET_UTF8` <- GenericEnumValue('GEOIP_CHARSET_UTF8', 1, 'GeoIPCharset')

#####################
setClass('GeoIPRegionTag', representation('country_code' = 'integer', 'region' = 'integer'))
setClass('GeoIPRegionTagRef', contains = 'RCReference')
setMethod('$', 'GeoIPRegionTagRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIPRegionTag.FFIType)
}, '.GeoIPRegionTag.FFIType' = structType(list('country_code' = arrayType(sint32Type, 3), 'region' = arrayType(sint32Type, 3)))))
setAs('GeoIPRegionTagRef', 'GeoIPRegionTag', function(from) as(from@ref, 'GeoIPRegionTag'))
setAs('externalptr', 'GeoIPRegionTagRef', function(from) new('GeoIPRegionTagRef', ref = from))
setAs('externalptr', 'GeoIPRegionTag', makeClosure(function(from) setSlots( getStructValue(from, .GeoIPRegionTag.FFIType), new('GeoIPRegionTag')), '.GeoIPRegionTag.FFIType' = structType(list('country_code' = arrayType(sint32Type, 3), 'region' = arrayType(sint32Type, 3)))))
setGeneric('GeoIPRegionTag', function(`country_code`, `region`, .obj = new('GeoIPRegionTag')) standardGeneric('GeoIPRegionTag'))
setMethod('GeoIPRegionTag', 'ANY', function(`country_code`, `region`, .obj = new('GeoIPRegionTag')) {
if(!missing(`country_code`))  .obj@`country_code` = as(`country_code`, 'integer')
if(!missing(`region`))  .obj@`region` = as(`region`, 'integer')
.obj})
setMethod('GeoIPRegionTag', 'externalptr', function(`country_code`, `region`, .obj = new('GeoIPRegionTag')) as(`country_code`, 'GeoIPRegionTag'))
setMethod('GeoIPRegionTag', 'GeoIPRegionTagRef', function(`country_code`, `region`, .obj = new('GeoIPRegionTag')) as(`country_code`, 'GeoIPRegionTag'))
GeoIPRegionTagRef = function(x) new('GeoIPRegionTagRef', ref = x)
setMethod('names', 'GeoIPRegionTagRef', function(x) c('country_code', 'region'))
setClass('GeoIPRegion', representation('country_code' = 'integer', 'region' = 'integer'))
setClass('GeoIPRegionRef', contains = 'RCReference')
setMethod('$', 'GeoIPRegionRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIPRegion.FFIType)
}, '.GeoIPRegion.FFIType' = structType(list('country_code' = arrayType(sint32Type, 3), 'region' = arrayType(sint32Type, 3)))))
setAs('GeoIPRegionRef', 'GeoIPRegion', function(from) as(from@ref, 'GeoIPRegion'))
setAs('externalptr', 'GeoIPRegionRef', function(from) new('GeoIPRegionRef', ref = from))
setAs('externalptr', 'GeoIPRegion', makeClosure(function(from) setSlots( getStructValue(from, .GeoIPRegion.FFIType), new('GeoIPRegion')), '.GeoIPRegion.FFIType' = structType(list('country_code' = arrayType(sint32Type, 3), 'region' = arrayType(sint32Type, 3)))))
setGeneric('GeoIPRegion', function(`country_code`, `region`, .obj = new('GeoIPRegion')) standardGeneric('GeoIPRegion'))
setMethod('GeoIPRegion', 'ANY', function(`country_code`, `region`, .obj = new('GeoIPRegion')) {
if(!missing(`country_code`))  .obj@`country_code` = as(`country_code`, 'integer')
if(!missing(`region`))  .obj@`region` = as(`region`, 'integer')
.obj})
setMethod('GeoIPRegion', 'externalptr', function(`country_code`, `region`, .obj = new('GeoIPRegion')) as(`country_code`, 'GeoIPRegion'))
setMethod('GeoIPRegion', 'GeoIPRegionRef', function(`country_code`, `region`, .obj = new('GeoIPRegion')) as(`country_code`, 'GeoIPRegion'))
GeoIPRegionRef = function(x) new('GeoIPRegionRef', ref = x)
setMethod('names', 'GeoIPRegionRef', function(x) c('country_code', 'region'))
setClass('GeoIPOptions', contains = 'EnumValue')
`GeoIPOptionsValues` = EnumDef('GeoIPOptions', structure(as.integer(c(0,
1,
2,
4,
8)),
names = c("GEOIP_STANDARD",
"GEOIP_MEMORY_CACHE",
"GEOIP_CHECK_CACHE",
"GEOIP_INDEX_CACHE",
"GEOIP_MMAP_CACHE")))


setAs('numeric', 'GeoIPOptions', function(from)  asEnumValue(from, `GeoIPOptionsValues`, 'GeoIPOptions', prefix = "GEOIP_"))
setAs('character', 'GeoIPOptions', function(from)  asEnumValue(from, `GeoIPOptionsValues`, 'GeoIPOptions', prefix = "GEOIP_"))
setAs('integer', 'GeoIPOptions', function(from)  asEnumValue(from, `GeoIPOptionsValues`, 'GeoIPOptions', prefix = "GEOIP_"))


`GEOIP_STANDARD` <- GenericEnumValue('GEOIP_STANDARD', 0, 'GeoIPOptions')
`GEOIP_MEMORY_CACHE` <- GenericEnumValue('GEOIP_MEMORY_CACHE', 1, 'GeoIPOptions')
`GEOIP_CHECK_CACHE` <- GenericEnumValue('GEOIP_CHECK_CACHE', 2, 'GeoIPOptions')
`GEOIP_INDEX_CACHE` <- GenericEnumValue('GEOIP_INDEX_CACHE', 4, 'GeoIPOptions')
`GEOIP_MMAP_CACHE` <- GenericEnumValue('GEOIP_MMAP_CACHE', 8, 'GeoIPOptions')

#####################
setClass('GeoIPDBTypes', contains = 'EnumValue')
`GeoIPDBTypesValues` = EnumDef('GeoIPDBTypes', structure(as.integer(c(1,
7,
6,
5,
4,
2,
3,
8,
9,
10,
11,
12)),
names = c("GEOIP_COUNTRY_EDITION",
"GEOIP_REGION_EDITION_REV0",
"GEOIP_CITY_EDITION_REV0",
"GEOIP_ORG_EDITION",
"GEOIP_ISP_EDITION",
"GEOIP_CITY_EDITION_REV1",
"GEOIP_REGION_EDITION_REV1",
"GEOIP_PROXY_EDITION",
"GEOIP_ASNUM_EDITION",
"GEOIP_NETSPEED_EDITION",
"GEOIP_DOMAIN_EDITION",
"GEOIP_COUNTRY_EDITION_V6")))


setAs('numeric', 'GeoIPDBTypes', function(from)  asEnumValue(from, `GeoIPDBTypesValues`, 'GeoIPDBTypes', prefix = "GEOIP_"))
setAs('character', 'GeoIPDBTypes', function(from)  asEnumValue(from, `GeoIPDBTypesValues`, 'GeoIPDBTypes', prefix = "GEOIP_"))
setAs('integer', 'GeoIPDBTypes', function(from)  asEnumValue(from, `GeoIPDBTypesValues`, 'GeoIPDBTypes', prefix = "GEOIP_"))


`GEOIP_COUNTRY_EDITION` <- GenericEnumValue('GEOIP_COUNTRY_EDITION', 1, 'GeoIPDBTypes')
`GEOIP_REGION_EDITION_REV0` <- GenericEnumValue('GEOIP_REGION_EDITION_REV0', 7, 'GeoIPDBTypes')
`GEOIP_CITY_EDITION_REV0` <- GenericEnumValue('GEOIP_CITY_EDITION_REV0', 6, 'GeoIPDBTypes')
`GEOIP_ORG_EDITION` <- GenericEnumValue('GEOIP_ORG_EDITION', 5, 'GeoIPDBTypes')
`GEOIP_ISP_EDITION` <- GenericEnumValue('GEOIP_ISP_EDITION', 4, 'GeoIPDBTypes')
`GEOIP_CITY_EDITION_REV1` <- GenericEnumValue('GEOIP_CITY_EDITION_REV1', 2, 'GeoIPDBTypes')
`GEOIP_REGION_EDITION_REV1` <- GenericEnumValue('GEOIP_REGION_EDITION_REV1', 3, 'GeoIPDBTypes')
`GEOIP_PROXY_EDITION` <- GenericEnumValue('GEOIP_PROXY_EDITION', 8, 'GeoIPDBTypes')
`GEOIP_ASNUM_EDITION` <- GenericEnumValue('GEOIP_ASNUM_EDITION', 9, 'GeoIPDBTypes')
`GEOIP_NETSPEED_EDITION` <- GenericEnumValue('GEOIP_NETSPEED_EDITION', 10, 'GeoIPDBTypes')
`GEOIP_DOMAIN_EDITION` <- GenericEnumValue('GEOIP_DOMAIN_EDITION', 11, 'GeoIPDBTypes')
`GEOIP_COUNTRY_EDITION_V6` <- GenericEnumValue('GEOIP_COUNTRY_EDITION_V6', 12, 'GeoIPDBTypes')

#####################
setClass('GeoIPProxyTypes', contains = 'EnumValue')
`GeoIPProxyTypesValues` = EnumDef('GeoIPProxyTypes', structure(as.integer(c(1,
2,
3)),
names = c("GEOIP_ANON_PROXY",
"GEOIP_HTTP_X_FORWARDED_FOR_PROXY",
"GEOIP_HTTP_CLIENT_IP_PROXY")))


setAs('numeric', 'GeoIPProxyTypes', function(from)  asEnumValue(from, `GeoIPProxyTypesValues`, 'GeoIPProxyTypes', prefix = "GEOIP_"))
setAs('character', 'GeoIPProxyTypes', function(from)  asEnumValue(from, `GeoIPProxyTypesValues`, 'GeoIPProxyTypes', prefix = "GEOIP_"))
setAs('integer', 'GeoIPProxyTypes', function(from)  asEnumValue(from, `GeoIPProxyTypesValues`, 'GeoIPProxyTypes', prefix = "GEOIP_"))


`GEOIP_ANON_PROXY` <- GenericEnumValue('GEOIP_ANON_PROXY', 1, 'GeoIPProxyTypes')
`GEOIP_HTTP_X_FORWARDED_FOR_PROXY` <- GenericEnumValue('GEOIP_HTTP_X_FORWARDED_FOR_PROXY', 2, 'GeoIPProxyTypes')
`GEOIP_HTTP_CLIENT_IP_PROXY` <- GenericEnumValue('GEOIP_HTTP_CLIENT_IP_PROXY', 3, 'GeoIPProxyTypes')

#####################
setClass('GeoIPNetspeedValues', contains = 'EnumValue')
`GeoIPNetspeedValuesValues` = EnumDef('GeoIPNetspeedValues', structure(as.integer(c(0,
1,
2,
3)),
names = c("GEOIP_UNKNOWN_SPEED",
"GEOIP_DIALUP_SPEED",
"GEOIP_CABLEDSL_SPEED",
"GEOIP_CORPORATE_SPEED")))


setAs('numeric', 'GeoIPNetspeedValues', function(from)  asEnumValue(from, `GeoIPNetspeedValuesValues`, 'GeoIPNetspeedValues', prefix = "GEOIP_"))
setAs('character', 'GeoIPNetspeedValues', function(from)  asEnumValue(from, `GeoIPNetspeedValuesValues`, 'GeoIPNetspeedValues', prefix = "GEOIP_"))
setAs('integer', 'GeoIPNetspeedValues', function(from)  asEnumValue(from, `GeoIPNetspeedValuesValues`, 'GeoIPNetspeedValues', prefix = "GEOIP_"))


`GEOIP_UNKNOWN_SPEED` <- GenericEnumValue('GEOIP_UNKNOWN_SPEED', 0, 'GeoIPNetspeedValues')
`GEOIP_DIALUP_SPEED` <- GenericEnumValue('GEOIP_DIALUP_SPEED', 1, 'GeoIPNetspeedValues')
`GEOIP_CABLEDSL_SPEED` <- GenericEnumValue('GEOIP_CABLEDSL_SPEED', 2, 'GeoIPNetspeedValues')
`GEOIP_CORPORATE_SPEED` <- GenericEnumValue('GEOIP_CORPORATE_SPEED', 3, 'GeoIPNetspeedValues')

#####################
setClass('GeoIPRecordTag', representation('country_code' = 'character', 'country_code3' = 'character', 'country_name' = 'character', 'region' = 'character', 'city' = 'character', 'postal_code' = 'character', 'latitude' = 'numeric', 'longitude' = 'numeric', 'x5017' = 'integer', 'area_code' = 'integer', 'charset' = 'integer', 'continent_code' = 'character'))
setClass('GeoIPRecordTagRef', contains = 'RCReference')
setMethod('$', 'GeoIPRecordTagRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIPRecordTag.FFIType)
}, '.GeoIPRecordTag.FFIType' = structType(list('country_code' = stringType, 'country_code3' = stringType, 'country_name' = stringType, 'region' = stringType, 'city' = stringType, 'postal_code' = stringType, 'latitude' = floatType, 'longitude' = floatType, 'x5017' = sint32Type, 'area_code' = sint32Type, 'charset' = sint32Type, 'continent_code' = stringType))))
setAs('GeoIPRecordTagRef', 'GeoIPRecordTag', function(from) as(from@ref, 'GeoIPRecordTag'))
setAs('externalptr', 'GeoIPRecordTagRef', function(from) new('GeoIPRecordTagRef', ref = from))
setAs('externalptr', 'GeoIPRecordTag', makeClosure(function(from) setSlots( getStructValue(from, .GeoIPRecordTag.FFIType), new('GeoIPRecordTag')), '.GeoIPRecordTag.FFIType' = structType(list('country_code' = stringType, 'country_code3' = stringType, 'country_name' = stringType, 'region' = stringType, 'city' = stringType, 'postal_code' = stringType, 'latitude' = floatType, 'longitude' = floatType, 'x5017' = sint32Type, 'area_code' = sint32Type, 'charset' = sint32Type, 'continent_code' = stringType))))
setGeneric('GeoIPRecordTag', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecordTag')) standardGeneric('GeoIPRecordTag'))
setMethod('GeoIPRecordTag', 'ANY', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecordTag')) {
if(!missing(`country_code`))  .obj@`country_code` = as(`country_code`, 'character')
if(!missing(`country_code3`))  .obj@`country_code3` = as(`country_code3`, 'character')
if(!missing(`country_name`))  .obj@`country_name` = as(`country_name`, 'character')
if(!missing(`region`))  .obj@`region` = as(`region`, 'character')
if(!missing(`city`))  .obj@`city` = as(`city`, 'character')
if(!missing(`postal_code`))  .obj@`postal_code` = as(`postal_code`, 'character')
if(!missing(`latitude`))  .obj@`latitude` = as(`latitude`, 'numeric')
if(!missing(`longitude`))  .obj@`longitude` = as(`longitude`, 'numeric')
if(!missing(`x5017`))  .obj@`x5017` = as(`x5017`, 'integer')
if(!missing(`area_code`))  .obj@`area_code` = as(`area_code`, 'integer')
if(!missing(`charset`))  .obj@`charset` = as(`charset`, 'integer')
if(!missing(`continent_code`))  .obj@`continent_code` = as(`continent_code`, 'character')
.obj})
setMethod('GeoIPRecordTag', 'externalptr', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecordTag')) as(`country_code`, 'GeoIPRecordTag'))
setMethod('GeoIPRecordTag', 'GeoIPRecordTagRef', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecordTag')) as(`country_code`, 'GeoIPRecordTag'))
GeoIPRecordTagRef = function(x) new('GeoIPRecordTagRef', ref = x)
setMethod('names', 'GeoIPRecordTagRef', function(x) c('country_code', 'country_code3', 'country_name', 'region', 'city', 'postal_code', 'latitude', 'longitude', 'x5017', 'area_code', 'charset', 'continent_code'))
setClass('GeoIPRecord', representation('country_code' = 'character', 'country_code3' = 'character', 'country_name' = 'character', 'region' = 'character', 'city' = 'character', 'postal_code' = 'character', 'latitude' = 'numeric', 'longitude' = 'numeric', 'x5017' = 'integer', 'area_code' = 'integer', 'charset' = 'integer', 'continent_code' = 'character'))
setClass('GeoIPRecordRef', contains = 'RCReference')
setMethod('$', 'GeoIPRecordRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIPRecord.FFIType)
}, '.GeoIPRecord.FFIType' = structType(list('country_code' = stringType, 'country_code3' = stringType, 'country_name' = stringType, 'region' = stringType, 'city' = stringType, 'postal_code' = stringType, 'latitude' = floatType, 'longitude' = floatType, 'x5017' = sint32Type, 'area_code' = sint32Type, 'charset' = sint32Type, 'continent_code' = stringType))))
setAs('GeoIPRecordRef', 'GeoIPRecord', function(from) as(from@ref, 'GeoIPRecord'))
setAs('externalptr', 'GeoIPRecordRef', function(from) new('GeoIPRecordRef', ref = from))
setAs('externalptr', 'GeoIPRecord', makeClosure(function(from) setSlots( getStructValue(from, .GeoIPRecord.FFIType), new('GeoIPRecord')), '.GeoIPRecord.FFIType' = structType(list('country_code' = stringType, 'country_code3' = stringType, 'country_name' = stringType, 'region' = stringType, 'city' = stringType, 'postal_code' = stringType, 'latitude' = floatType, 'longitude' = floatType, 'x5017' = sint32Type, 'area_code' = sint32Type, 'charset' = sint32Type, 'continent_code' = stringType))))
setGeneric('GeoIPRecord', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) standardGeneric('GeoIPRecord'))
setMethod('GeoIPRecord', 'ANY', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) {
if(!missing(`country_code`))  .obj@`country_code` = as(`country_code`, 'character')
if(!missing(`country_code3`))  .obj@`country_code3` = as(`country_code3`, 'character')
if(!missing(`country_name`))  .obj@`country_name` = as(`country_name`, 'character')
if(!missing(`region`))  .obj@`region` = as(`region`, 'character')
if(!missing(`city`))  .obj@`city` = as(`city`, 'character')
if(!missing(`postal_code`))  .obj@`postal_code` = as(`postal_code`, 'character')
if(!missing(`latitude`))  .obj@`latitude` = as(`latitude`, 'numeric')
if(!missing(`longitude`))  .obj@`longitude` = as(`longitude`, 'numeric')
if(!missing(`x5017`))  .obj@`x5017` = as(`x5017`, 'integer')
if(!missing(`area_code`))  .obj@`area_code` = as(`area_code`, 'integer')
if(!missing(`charset`))  .obj@`charset` = as(`charset`, 'integer')
if(!missing(`continent_code`))  .obj@`continent_code` = as(`continent_code`, 'character')
.obj})
setMethod('GeoIPRecord', 'externalptr', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) as(`country_code`, 'GeoIPRecord'))
setMethod('GeoIPRecord', 'GeoIPRecordRef', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) as(`country_code`, 'GeoIPRecord'))
GeoIPRecordRef = function(x) new('GeoIPRecordRef', ref = x)
setMethod('names', 'GeoIPRecordRef', function(x) c('country_code', 'country_code3', 'country_name', 'region', 'city', 'postal_code', 'latitude', 'longitude', 'x5017', 'area_code', 'charset', 'continent_code'))
setClass('GeoIPRecord', representation('country_code' = 'character', 'country_code3' = 'character', 'country_name' = 'character', 'region' = 'character', 'city' = 'character', 'postal_code' = 'character', 'latitude' = 'numeric', 'longitude' = 'numeric', 'x5017' = 'integer', 'area_code' = 'integer', 'charset' = 'integer', 'continent_code' = 'character'))
setClass('GeoIPRecordRef', contains = 'RCReference')
setMethod('$', 'GeoIPRecordRef', makeClosure(function(x, name) 
{
getStructField(x, name, .GeoIPRecord.FFIType)
}, '.GeoIPRecord.FFIType' = structType(list('country_code' = stringType, 'country_code3' = stringType, 'country_name' = stringType, 'region' = stringType, 'city' = stringType, 'postal_code' = stringType, 'latitude' = floatType, 'longitude' = floatType, 'x5017' = sint32Type, 'area_code' = sint32Type, 'charset' = sint32Type, 'continent_code' = stringType))))
setAs('GeoIPRecordRef', 'GeoIPRecord', function(from) as(from@ref, 'GeoIPRecord'))
setAs('externalptr', 'GeoIPRecordRef', function(from) new('GeoIPRecordRef', ref = from))
setAs('externalptr', 'GeoIPRecord', makeClosure(function(from) setSlots( getStructValue(from, .GeoIPRecord.FFIType), new('GeoIPRecord')), '.GeoIPRecord.FFIType' = structType(list('country_code' = stringType, 'country_code3' = stringType, 'country_name' = stringType, 'region' = stringType, 'city' = stringType, 'postal_code' = stringType, 'latitude' = floatType, 'longitude' = floatType, 'x5017' = sint32Type, 'area_code' = sint32Type, 'charset' = sint32Type, 'continent_code' = stringType))))
setGeneric('GeoIPRecord', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) standardGeneric('GeoIPRecord'))
setMethod('GeoIPRecord', 'ANY', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) {
if(!missing(`country_code`))  .obj@`country_code` = as(`country_code`, 'character')
if(!missing(`country_code3`))  .obj@`country_code3` = as(`country_code3`, 'character')
if(!missing(`country_name`))  .obj@`country_name` = as(`country_name`, 'character')
if(!missing(`region`))  .obj@`region` = as(`region`, 'character')
if(!missing(`city`))  .obj@`city` = as(`city`, 'character')
if(!missing(`postal_code`))  .obj@`postal_code` = as(`postal_code`, 'character')
if(!missing(`latitude`))  .obj@`latitude` = as(`latitude`, 'numeric')
if(!missing(`longitude`))  .obj@`longitude` = as(`longitude`, 'numeric')
if(!missing(`x5017`))  .obj@`x5017` = as(`x5017`, 'integer')
if(!missing(`area_code`))  .obj@`area_code` = as(`area_code`, 'integer')
if(!missing(`charset`))  .obj@`charset` = as(`charset`, 'integer')
if(!missing(`continent_code`))  .obj@`continent_code` = as(`continent_code`, 'character')
.obj})
setMethod('GeoIPRecord', 'externalptr', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) as(`country_code`, 'GeoIPRecord'))
setMethod('GeoIPRecord', 'GeoIPRecordRef', function(`country_code`, `country_code3`, `country_name`, `region`, `city`, `postal_code`, `latitude`, `longitude`, `x5017`, `area_code`, `charset`, `continent_code`, .obj = new('GeoIPRecord')) as(`country_code`, 'GeoIPRecord'))
GeoIPRecordRef = function(x) new('GeoIPRecordRef', ref = x)
setMethod('names', 'GeoIPRecordRef', function(x) c('country_code', 'country_code3', 'country_name', 'region', 'city', 'postal_code', 'latitude', 'longitude', 'x5017', 'area_code', 'charset', 'continent_code'))
