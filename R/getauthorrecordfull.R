#' Provides info about author, mostly in the form of handles
#'
#' @param x Short-ID.
#' @param code User code required to use API. Included in every API call.
#'
#' @return data.frame
#'
#' @examples
#' \dontrun{
#' getauthorrecordfull('pmo915', code = YOURCODE)
#' }
#'
#' @export

getauthorrecordfull <- function(x, code = NA) {

  if (missing(code)) {
    stop('"code" is required. See https://ideas.repec.org/api.html')
  }

  root <- 'https://api.repec.org/call.cgi?'

  f <- paste0(root, 'getauthorrecordfull=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  return(res)
}
