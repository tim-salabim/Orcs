% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trimImages.R
\name{trimImages}
\alias{trimImages}
\title{Remove whitespace from images}
\usage{
trimImages(path = getwd(), pattern = c(".png$", ".tiff$"))
}
\arguments{
\item{path}{Character. File path leading to image files; defaults to the 
current working directory.}

\item{pattern}{Character. A regular expression as taken by 
\code{\link{list.files}}; defaults to \code{c(".png$", ".tiff$")}.}
}
\value{
A character vector containing the names of the processed images.
}
\description{
This is a wrapper function around \code{convert -trim} to automatically 
remove any whitespace from locally saved images. Note that 'ImageMagick' must
be installed on your local system.
}
\examples{
\dontrun{
## trim images in current working directory
trimImages()
}

}
\seealso{
\code{\link{list.files}}, \code{\link{system}}
}
\author{
Florian Detsch
}
