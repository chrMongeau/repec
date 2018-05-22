#' Get JEL codes for item
#'
#' @param x RePEc handle for an item.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return Vector with JEL codes.
#'
#' @examples
#' \dontrun{
#' getjelforitem('RePEc:eee:enepol:v:78:y:2015:i:c:p:41-50', code = YOURCODE)
#' }
#'
#' @export

getjelforitem <- function(x, code = NA) {

  if (missing(x)) {
    stop('"x" is required. It should be a string.')
  }

  if (missing(code)) {
    code <- Sys.getenv('REPEC_API_KEY')

    if (code == '') {
      stop('"code" is required. See https://ideas.repec.org/api.html')
    }
  }

  root <- 'https://api.repec.org/call.cgi?'

  f <- paste0(root, 'getjelforitem=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  # If the result is a data.frame, it's due to an error.
  if (class(res) == 'data.frame') res <- NA_character_

  return(res)
}
