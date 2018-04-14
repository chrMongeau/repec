#' Provides Twitter handle
#'
#' @param x Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return String with the Twitter author linked to the Short-ID.
#'
#' @examples
#' \dontrun{
#' getauthorrecordraw('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export


getauthortwitter <- function(x, code = NA) {

  if (missing(x)) {
    stop('"x" is required. It should be a RePEc Short-ID.')
  }

  if (missing(code)) {
    code <- Sys.getenv('REPEC_API_KEY')

    if (code == '') {
      stop('"code" is required. See https://ideas.repec.org/api.html')
    }
  }

  root <- 'https://api.repec.org/call.cgi?'

  f <- paste0(root, 'getauthortwitter=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  return(res)
}
