#' Get record of Institution
#'
#' @param x RePEc handle for an institution
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame.
#'
#' @examples
#' \dontrun{
#' getinstrecord('RePEc:edi:dechiit', code = YOURCODE)
#' }
#'
#' @export

getinstrecord <- function(x, code = NA) {

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

  f <- paste0(root, 'getinstrecord=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  return(res)
}

#' @rdname getinstrecord
#' @export
get_inst_record <- getinstrecord
