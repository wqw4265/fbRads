% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/fb_ad.R
\name{fbad_read_ad}
\alias{fbad_read_ad}
\title{Read ad details}
\usage{
fbad_read_ad(fbacc, id, fields = "id")
}
\arguments{
\item{fbacc}{(optional) \code{FB_Ad_account} object, which defaults to the last returned object of \code{\link{fbad_init}}.}

\item{id}{ad id(s)}

\item{fields}{character vector of fields to get from the API, defaults to \code{id}. Please refer to the Facebook documentation for a list of possible values.}
}
\value{
data.frame
}
\description{
Read ad details
}
\note{
Will do a batched request to the Facebook API if multiple ids are provided.
}
\examples{
\dontrun{
## get and Ad ID from yesterday
adid <- fb_insights(date_preset = 'yesterday', level = 'ad')[[1]]$ad_id[1]
## look for current status of the Ad
fbad_read_ad(id = adid, fields = c('effective_status'))
}
}
\references{
\url{https://developers.facebook.com/docs/marketing-api/reference/adgroup#Reading}
}

