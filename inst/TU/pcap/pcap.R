library(RGCCTranslationUnit)
library(Rffi)
tu = parseTU("pcap.c.001t.tu")
r = getRoutines(tu)
names(r)
r = r[grep("^pcap", names(r))]

off = resolveType(r$pcap_open_offline, tu)
define(createRFunc(off))


ds = getDataStructures(tu)
ds = ds[grep("^pcap", names(ds))]

ds = lapply(ds, resolveType, tu)

define(defStructClass(ds$pcap_t))


define(createRFunc(resolveType(r$pcap_next, tu)))
define(defStructClass(ds$pcap_pkthdr))


if(FALSE) { # not for offline files
define(defStructClass(ds$pcap_stat))
stats = resolveType(r$pcap_stats, tu)
define(createRFunc(stats))
}
#

if(FALSE) {
dyn.load("/usr/local/lib/libpcap.1.1.1.dylib")
err = raw(10000)
pc = pcap_open_offline(path.expand("~/r_canadbank.tcp"), err, returnInputs = FALSE)

  stats_type = structType(list('ps_recv' = sint32Type, 'ps_drop' = sint32Type, 'ps_ifdrop' = sint32Type))
  ptr = alloc(stats_type)
  pcap_stats(pc, ptr)


if(FALSE) {  # not for offline.
  stats_type = structType(list('ps_recv' = sint32Type, 'ps_drop' = sint32Type, 'ps_ifdrop' = sint32Type))
  ptr = alloc(stats_type)
  pcap_stats(pc, ptr)
}
}



