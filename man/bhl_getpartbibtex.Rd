% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bhl_getpartbibtex.R
\name{bhl_getpartbibtex}
\alias{bhl_getpartbibtex}
\title{Return a citation for a part, using the BibTeX format.}
\usage{
bhl_getpartbibtex(partid, as = "list", key = NULL, ...)
}
\arguments{
\item{partid}{The identifier of an individual part (article, chapter, etc) (numeric)}

\item{as}{(character) Return a list ("list"), json ("json"), xml ("xml"), or parsed table
("table", default). Note that \code{as="table"} can give different data format back
depending on the function - for example, sometimes a data.frame and sometimes a
character vector.}

\item{key}{Your BHL API key, either enter, or loads from your \code{.Renviron} as \code{BHL_KEY}
or from \code{.Rprofile} as \code{bhl_key}.}

\item{...}{Curl options passed on to \code{\link[httr]{GET}}}
}
\description{
Return a citation for a part, using the BibTeX format.
}
\examples{
\dontrun{
bhl_getpartbibtex(1000)
bhl_getpartbibtex(1000, 'json')
}
}

