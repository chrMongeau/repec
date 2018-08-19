#' Verifies whether the connection is performed from the registered IP
#'
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return TRUE if the connection is from a registered IP, FALSE otherwise.
#'
#' @examples
#' \dontrun{
#' testip(YOURCODE)
#' }
#'
#' @export

testip <- function(code = NA) {

  if (missing(code)) {
    code <- Sys.getenv('REPEC_API_KEY')

    if (code == '') {
      stop('"code" is required. See https://ideas.repec.org/api.html')
    }
  }

  root <- 'https://api.repec.org/call.cgi?'

  f <- paste0(root, 'testip=1', '&code=', code)

  res <- jsonlite::fromJSON(f)

  return(grepl('OK', res$testip))
}

#' @rdname testip
#' @export
test_ip <- testip
