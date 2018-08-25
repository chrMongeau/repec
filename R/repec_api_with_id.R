#' Generic API call, with an ID
#'
#' @param id Short-ID.
#' @param method API method to call.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return String with the Twitter author linked to the Short-ID.
#'
#' @examples
#' \dontrun{
#' repec_api_with_id(id = 'pmo915',
#'   method = 'getauthortwitter', code = YOURCODE)
#' }
#'
#' @md
#' @export


repec_api_with_id <- function(id = NA, method = NA, code = NA) {

  if (missing(id)) {
    stop('"id" is required. It should be a RePEc Short-ID.')
  }

  if (missing(method)) {
    stop('"method" is required. It should be a RePEc Short-ID.')
  }

  if (missing(code)) {
    code <- Sys.getenv('REPEC_API_KEY')

    if (code == '') {
      stop('"code" is required. See https://ideas.repec.org/api.html')
    }
  }

  root <- 'https://api.repec.org/call.cgi?'

  f <- paste0(root, method, '=', id, '&code=', code)

  res <- jsonlite::fromJSON(f)

  if ('error' %in% names(res)) {
    stop('RePEc API returned an error. Are you using a valid `code`?')
  }

  return(res)
}
