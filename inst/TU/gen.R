a = createRFunc(ip.open)
b = defStructClass(ip.open$returnType@type)
c = createRFunc(record)
d = defStructClass(record$returnType@type)
cat(unlist(c(a, b, c, d)), sep = "\n", file = "code.RR")

