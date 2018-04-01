#' Provides extended info about author
#'
#' @param x Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame. Note: columns `article` and `paper` are data.frames.
#'
#' @examples
#' \dontrun{
#' getauthorrecordraw('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export


getauthorrecordraw <- function(x, code = NA) {

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

  f <- paste0(root, 'getauthorrecordraw=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  return(res)
}
