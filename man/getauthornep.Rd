% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getauthornep.R
\name{getauthornep}
\alias{getauthornep}
\alias{get_author_nep}
\title{Get the NEP fields for the papers of an author}
\usage{
getauthornep(id, code = NA)

get_author_nep(id, code = NA)
}
\arguments{
\item{id}{Short-ID.}

\item{code}{User code required to use API. Included in every API call.
If not supplied, the REPEC_API_KEY environment variable will be used.}
}
\value{
data.frame
}
\description{
Get the NEP fields for the papers of an author
}
\examples{
\dontrun{
getauthornep('pmo915', code = YOURCODE)
}

}
