% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper_functions_readability.R
\name{spache}
\alias{spache}
\title{Readability: Spache Formula}
\usage{
spache(txt.file, word.list, parameters = c(asl = 0.121, dword = 0.082, const =
  0.659), ...)
}
\arguments{
\item{txt.file}{Either an object of class \code{\link[koRpus]{kRp.tagged-class}},
      a character vector which must be be
a valid path to a file containing the text to be analyzed,
      or a list of text features. If the latter, calculation
is done by \code{\link[koRpus:readability.num]{readability.num}}.}

\item{word.list}{A vector or matrix (with exactly one column) which defines familiar words. For valid results
the short Dale-Chall list with 769 easy words should be used.}

\item{parameters}{A numeric vector with named magic numbers,
      defining the relevant parameters for the index.}

\item{...}{Further valid options for the main function,
      see \code{\link[koRpus:readability]{readability}} for details.}
}
\value{
An object of class \code{\link[koRpus]{kRp.readability-class}}.
}
\description{
This is just a convenient wrapper function for \code{\link[koRpus:readability]{readability}}.
}
\details{
Calculates the Spache Formula. In contrast to \code{\link[koRpus:readability]{readability}},
which by default calculates all possible indices,
      this function will only calculate the index value.

By default the revised Spache formula is calculated. If \code{parameters="old"},
      the original
parameters are used.

This formula doesn't need syllable count.
}
\examples{
\dontrun{
spache(tagged.text, word.list=spache.revised.wl)
}
}
\keyword{readability}
