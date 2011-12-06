library(Rffi)
setClass('addrinfo', representation('ai_flags' = 'integer', 'ai_family' = 'integer', 'ai_socktype' = 'integer', 'ai_protocol' = 'integer', 'ai_addrlen' = 'integer', 'ai_canonname' = 'character', 'ai_addr' = 'sockaddr', 'ai_next' = 'addrinfo'))
setClass('addrinfoRef', contains = 'RCReference')
setMethod('$', 'addrinfoRef', makeClosure(function(x, name) 
{
getStructField(x, name, .addrinfo.FFIType)
}, '.addrinfo.FFIType' = structType(list('ai_flags' = sint32Type, 'ai_family' = sint32Type, 'ai_socktype' = sint32Type, 'ai_protocol' = sint32Type, 'ai_addrlen' = sint32Type, 'ai_canonname' = stringType, 'ai_addr' = pointerType, 'ai_next' = pointerType))))
setAs('addrinfoRef', 'addrinfo', function(from) as(from@ref, 'addrinfo'))
setAs('externalptr', 'addrinfoRef', function(from) new('addrinfoRef', ref = from))
setAs('externalptr', 'addrinfo', makeClosure(function(from) setSlots( getStructValue(from, .addrinfo.FFIType), new('addrinfo')), '.addrinfo.FFIType' = structType(list('ai_flags' = sint32Type, 'ai_family' = sint32Type, 'ai_socktype' = sint32Type, 'ai_protocol' = sint32Type, 'ai_addrlen' = sint32Type, 'ai_canonname' = stringType, 'ai_addr' = pointerType, 'ai_next' = pointerType))))
setGeneric('addrinfo', function(`ai_flags`, `ai_family`, `ai_socktype`, `ai_protocol`, `ai_addrlen`, `ai_canonname`, `ai_addr`, `ai_next`, .obj = new('addrinfo')) standardGeneric('addrinfo'))
setMethod('addrinfo', 'ANY', function(`ai_flags`, `ai_family`, `ai_socktype`, `ai_protocol`, `ai_addrlen`, `ai_canonname`, `ai_addr`, `ai_next`, .obj = new('addrinfo')) {
if(!missing(`ai_flags`))  .obj@`ai_flags` = as(`ai_flags`, 'integer')
if(!missing(`ai_family`))  .obj@`ai_family` = as(`ai_family`, 'integer')
if(!missing(`ai_socktype`))  .obj@`ai_socktype` = as(`ai_socktype`, 'integer')
if(!missing(`ai_protocol`))  .obj@`ai_protocol` = as(`ai_protocol`, 'integer')
if(!missing(`ai_addrlen`))  .obj@`ai_addrlen` = as(`ai_addrlen`, 'integer')
if(!missing(`ai_canonname`))  .obj@`ai_canonname` = as(`ai_canonname`, 'character')
if(!missing(`ai_addr`))  .obj@`ai_addr` = as(`ai_addr`, 'sockaddr')
if(!missing(`ai_next`))  .obj@`ai_next` = as(`ai_next`, 'addrinfo')
.obj})
setMethod('addrinfo', 'externalptr', function(`ai_flags`, `ai_family`, `ai_socktype`, `ai_protocol`, `ai_addrlen`, `ai_canonname`, `ai_addr`, `ai_next`, .obj = new('addrinfo')) as(`ai_flags`, 'addrinfo'))
setMethod('addrinfo', 'addrinfoRef', function(`ai_flags`, `ai_family`, `ai_socktype`, `ai_protocol`, `ai_addrlen`, `ai_canonname`, `ai_addr`, `ai_next`, .obj = new('addrinfo')) as(`ai_flags`, 'addrinfo'))
addrinfoRef = function(x) new('addrinfoRef', ref = x)
setMethod('names', 'addrinfoRef', function(x) c('ai_flags', 'ai_family', 'ai_socktype', 'ai_protocol', 'ai_addrlen', 'ai_canonname', 'ai_addr', 'ai_next'))
`getaddrinfo` =
makeClosure( function(x1, x2, x3, x4,  returnInputs = TRUE, ..., .cif = .getaddrinfo.cif)
{
 if(is.null(.sym))
  .sym <<- getNativeSymbolInfo('getaddrinfo')$address
 ans =  callCIF(.cif, .sym,  x1, x2, x3, x4, ..., returnInputs = returnInputs)
  if(returnInputs)
     ans$value = ans$value
  else
     ans = ans
   ans
}
, .sym = if(is.loaded('getaddrinfo')) getNativeSymbolInfo('getaddrinfo')$address else NULL, .getaddrinfo.cif = CIF(sint32Type, list(stringType, stringType, pointerType, pointerType)))
