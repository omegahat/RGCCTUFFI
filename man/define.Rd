\name{define}
\alias{define}
\alias{define,CStructRCode-method}
\alias{define,RCode-method}
\alias{define,list-method}
\alias{define,character-method}
\alias{define,NULL-method}
\alias{define,CodeTOC-method}
\title{Evaluate the R code into a definition}
\description{
  This takes the R code as a string and evaluates it
  in the R session. The idea is that the code
  contains class and R function definitions
  and so we are "defining" them.
}
\usage{
define(x, where = globalenv(), ...)
}
\arguments{
  \item{x}{a character vector or list of character vectors of R code}
  \item{where}{the environment in which the definition is to be assigned}
  \item{\dots}{additional parameters for methods to add}
}
\value{
  This is used for its side effects of defining R objects
  and classes.
}
\references{
 The RGCCTranslationUnit pacakge.
}
\author{
Duncan Temple Lang
}

\seealso{
  \code{\link{genTUInterface}}    
  \code{\link{defStructClass}}
  \code{\link{createRFunc}}
}
\examples{
  tu.file = system.file("TU", "utsname", "utsname.c.001t.tu", package = "RGCCTUFFI")
  code = genTUInterface(tu.file, pattern = "utsname|uname")

      # now we can evaluate/load/define the code in this R session
  define(code)
}
\keyword{programming}
\keyword{interface}
