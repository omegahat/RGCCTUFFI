\name{genDocumentation}
\alias{genDocumentation}


\alias{RAbstractAutoDocumentation-class}
\alias{RAutoDocumentation-class}
\alias{RFunctionDocumentation-class}
\alias{REnumDocumentation-class}
\alias{RClassDocumentation-class}
\alias{RTUDocumentation-class}

\title{Generate documentation for the programmatically generated functions, classes and enumerations}
\description{
 This function and the collection of (as yet) unexported helper functions 
 create documentation for the functions, classes and enumeration constants and classes
 that we generate in this package corresponding to native routines and data structures.
 The function generates the content that can be put in Rd files as part of a package
 for documenting the generated code.
}
\usage{
genDocumentation(funcs, types, enums, paramDocs = list())
}
\arguments{
  \item{funcs}{the list of resolved function descriptions computed from the translation unit.
   By resolved, we mean returned by a call to RGCCTranslationUnit's \code{resolveType} function.}
  \item{types}{the list of resolved data types}
  \item{enums}{the list of resolved enumerations.}
  \item{paramDocs}{an optional list with named elements corresponding to the names of functions in \code{funcs}.
   Each element should be a character vector (or list with each element being a character string or vector).
   These strings are used to document specific parameters in that function.
   If a parameter for a function has an entry in this two-tier list, that string is used as the documentation.
   Otherwise, the default content is used which describes the expected type.
  }
}
\value{
 An object of class RTUDocumentation.
 This has 3 slots - for classes, functions and enums.
}
\references{
Writing R extensions manual
The RGCCTranslationUnit package
}
\author{
Duncan Temple Lang
}

\seealso{
\code{\link{genTUInterface}}
}
\examples{

}
\keyword{programming}
\keyword{interface}
\concept{meta-programming}
