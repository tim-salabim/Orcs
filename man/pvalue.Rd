% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pvalue.R
\name{pvalue}
\alias{pvalue}
\title{Get \emph{p}-value from a univariate 'lm' object}
\usage{
pvalue(mod)
}
\arguments{
\item{mod}{An object of class 'lm'.}
}
\value{
A 'numeric' \emph{p}-value.
}
\description{
Retrieve the \emph{p}-value associated with a univariate linear regression.
}
\examples{
## taken from ?lm
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)

pvalue(lm.D9)

}
\references{
\url{https://stat.ethz.ch/pipermail/r-help/2005-December/084308.html}
(last accessed 2015-12-09).
}
\seealso{
\code{\link{lm}}.
}
