% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lineEnding.R
\name{lineEnding}
\alias{lineEnding}
\title{Convert between DOS and UNIX line endings}
\usage{
lineEnding(infile, pattern = NULL, outfile = NULL, to = c("dos", "unix"),
  ...)
}
\arguments{
\item{infile}{Input filename(s).}

\item{pattern}{See \code{\link{list.files}}. This will be ignored if 'infile' 
is specified.}

\item{outfile}{Output filename. If not supplied, 'infile' will be 
overwritten.}

\item{to}{Either 'dos' or 'unix'.}

\item{...}{Further arguments passed on to \code{\link{list.files}}, e.g. 
'path', 'full.names'.}
}
\description{
This function converts between DOS and UNIX style line endings by envoking 
\code{unix2dos} (or \code{dos2unix}) upon a text file (see also 
\code{system("unix2dos --help")}). Note that this function requires the 
installation of external software in order to work!
}
\examples{
## input file
infile <- paste(system.file(package = "Orcs"), "DESCRIPTION", sep = "/")

## convert to dos line endings and write to output file
lineEnding(infile, outfile = "~/Desktop/DESCRIPTION4wd", to = "dos")

}
\seealso{
\code{\link{list.files}}, \code{\link{system}}
}
\author{
Florian Detsch
}
