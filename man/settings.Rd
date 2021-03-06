\name{scalaSettings}
\alias{scalaSettings}
\docType{methods}
\title{
Changes the runtime behavior of an embedded interpreter.
}
\description{
This function either: i. modifies the runtime behavior of an interpreter for
arguments that are not null or ii. when the only supplied argument is an
interpreter instance, the current values of the settings are given.  The values
set here may be superseded by optional arguments in particular function calls.
}
\usage{
scalaSettings(interpreter, interpolate=NULL, length.one.as.vector=NULL)
}
\arguments{
    \item{interpreter}{An interpreter from an interpreter constructor (i.e. \code{\link{scala}}).}
    \item{interpolate}{A logical vector of length one setting the default behavior when a character vector is passed to the interpreter.  If \code{TRUE}, the interpreter will call \code{\link{strintrplt}} on the supplied code before running it (unless the default behavior set here is overridden for a particular function call).}
    \item{length.one.as.vector}{A logical vector of length one providing the default behavior when setting an \R vector of length one.  If \code{TRUE}, setting a vector of length one in the interpreter will result in an array of length one.  If \code{FALSE}, setting a vector of length one results in an atomic value.  For example, \code{pi} is a vector of length one in \R and, when set in an interpreter, would result in an array of doubles of length one if \var{length.one.as.vector} is \code{TRUE} or a double if \var{length.one.as.vector} is \code{FALSE}.
The default behavior set here can be overridden for a particular function call.}
}
\author{
David B. Dahl \email{dahl@stat.byu.edu}
}
\seealso{
  \code{\link{scala}},
  \code{\link{scalaEval}},
  \code{\link{scalaSet}},
  \code{\link{scalaGet}},
  \code{\link{scalaDef}},
  \code{\link{strintrplt}}
}
\keyword{interface}

