\name{defStructClass}
\alias{defStructClass}
\alias{defStructClass,PointerType-method}
\alias{defStructClass,StructDefinition-method}
\alias{defStructClass,ResolvedTypeReference-method}
\alias{defStructClass,TypedefDefinition-method}
\title{Generate R code to work with a C-level struct}
\description{
  This function and its methods generate the R code
  to interface to a C-level struct. It creates
  classes to parallel the struct in R or to
  maintain a reference to a C-level instance of the struct.
  It generates methods for \code{$} and \code{[[}
  to access fields within a reference to the struct,
  and also a method for the \code{names} function to return the
  names of the fields for a reference to a C instance of the struct.
  The function provides coercion methods from a reference to the R representation
  (by copying the fields into slots in the R object),
  and from a simple pointer to the R classes (reference and R-level
  representation).
  This also creates a constructor function to create an instance of the
  R-level class.
  The function also creates an FFI description of the structure
  for use with accessing the individual fields or specifying
  the struct as an input or output type of a C routine
  so that the routine can be invoked via \code{callCIF}.
  
}
\usage{
defStructClass(type, name = type@name, ref = TRUE, 
                refClassName = getRRefTypeName(type), 
               useGlobalFFIType = useClosure, useClosure = TRUE)
}
\arguments{
  \item{type}{the GCC TU description of the C struct type. This must be resolved}
  \item{name}{the name of the structure}
  \item{ref}{whether to create code for the reference class}
  \item{refClassName}{the name of the reference class.  By default we
    append Ref to the end of the name of the regular R representation class.}
  \item{useGlobalFFIType}{a logical value controlling whether we put the
     FFI description of the struct in a global variable and refer to
     that or put it in a closure to be used locally within each function.
   }
  \item{useClosure}{a logical value controlling whether to create
    functions with their own environments so that they can refer
    to the FFI type and symbol addresses locally rather than
    polluting the search path.
   }
}
\value{
  A list with code for the different aspects of the interface.
  \item{defs}{class definitions}
  \item{dollar}{for the \code{$} and \code{[[} accessor functions}
  \item{coerce}{coercion code, i.e. the as methods}
  \item{constructors}{code for the constructor function}
  \item{names}{function returing the field names of a reference to the struct}
}
\references{
  The RGCCTranslationUnit.
  libffi
}
\author{
Duncan Temple Lang
}


\seealso{
  \code{\link[RAutoGenRunTime]{RCReference-class}}
  \code{\link[methods]{setClass}}
  \code{\link[base]{$}}
}
\examples{
\donttest{
  tu.file = system.file("TU", "utsname", "utsname.c.001t.tu", package =  "RGCCTUFFI")

  tu = parseTU(tu.file)
  r = getRoutines(tu)
  r.uname = resolveType(r$uname, tu)
  code = createRFunc(r.uname, returnInputs = "FALSE")

  ds = getDataStructures(tu)
  ds.utsname = resolveType(ds$utsname, tu)
  scode = defStructClass(ds.utsname)

  define(list(code, scode))

  u = utsnameRef()
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
}
\keyword{programming}
\keyword{interface}
