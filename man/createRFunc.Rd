\name{createRFunc}
\alias{createRFunc}
\title{Generate code to define R function to interface to C routine}
\description{
  This function accepts a resolved  description of a C routine and
  generates the R code that will invoke that routine by coercing
  any arguments to the correct type and passing control the
  native routine. It then converts the result back to an R object.

  The code can use a closure to store the address of the native symbol
  and also the call interface (CIF) object describing the routine
  for the FFI library.
}
\usage{
createRFunc(routine, name = routine$name, useGlobalCIF = useClosure,
             useClosure = TRUE, returnInputs = NA)
}
\arguments{
  \item{routine}{a description of the C routine, obtained via
  \code{resolveType} in the RGCCTranslationUnit package}
  \item{name}{the name of the C routine}
  \item{useGlobalCIF}{a logical value indicating whether to use a global
  variable to store the CIF for this routine, or to inline the CIF
  creation code or, if \code{useClosure} is \code{TRUE}, to store the
  CIF object in the closure environment.}
  \item{useClosure}{a logical value indicating whether to create a
  separate environment for this function in which the address of the C
  routine, the CIF and other objects that are used across different
  calls to this new function cab be stored}
\item{returnInputs}{the default value for the \code{returnInputs}
  parameter in the function being generated.
   This is then passed to
  \code{callCIF}  and controls whether any mutable parameters should be
  returned after the call.
   The caller can specify the value or leave it to the function to
  determine based on the number and types of the parameters.
 }
}
\value{
 A character vector containing R code to create a function 
}
\references{
  The RGCCTranslationUnit package
}
\author{
Duncan Temple Lang
}
\seealso{
  \code{\link[Rffi]{CIF}}
  \code{\link[Rffi]{callCIF}}
}
\examples{
  tu.file = system.file("TU", "utsname", "utsname.c.001t.tu", package =  "RGCCTUFFI")

  tu = parseTU(tu.file)
  r = getRoutines(tu)
  r.uname = resolveType(r$uname, tu)
  code = createRFunc(r.uname, returnInputs = "FALSE")

  ds = getDataStructures(tu)
  ds.utsname = resolveType(ds$utsname, tu)
  scode = defStructClass(ds.utsname)

  define(list(code, scode))

  u = utsnamePtr()
  uname(u)

  names(u)
  u[]
  u$sysname


  ################ 
  # Alternatively, we can use genTUInterface() to do everything
  # for us in a single call.  But we lose some control, e.g.
  # setting the returnInputs.

  code = genTUInterface(tu.file, pattern = "utsname|uname")

      # now we can evaluate/load/define the code in this R session
      # including the uname() function.
  define(code)
}
\keyword{programming}
\keyword{interface}

