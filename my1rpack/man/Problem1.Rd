\name{problem1}

\alias{problem1}

\title{
Function for homework 2 problem 1
}

\description{
This function plots the a function for a specified range using a
specified number of sample points. The generated plot is in tex tikz
format. With the last argument being TRUE, it compiles the generated tex
file into a PDF file.
}

\usage{problem1(filename = 'nameOfOutput', fcnname = aFunction, nRange =
c(xLowerBound, xUpperBound), nsample = N, TRUE)}

\arguments{
  \item{filename}{The file name of the generated plot, without
    suffix.}
  \item{fcnname}{A reference to a function.}
  \item{nrange}{Two-element array containing the lower and upper bound
    of the x values.}
  \item{nsample}{Number of sample points in the plot.}
  \item{compile}{A boolean variable indicating whether to generate the
    PDF file upon completion of the function call.}
}

\value{
  Used for its side-effects.
}

\author{
Zhenhan Zhao <zzhao13@jhu.edu>
}
\note{
}
\examples{
problem1('bmw1series', dnorm, c(-5, 5), 10, TRUE)
}