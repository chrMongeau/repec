#' Get Authors for an item
#'
#' @param x RePEc handle for an item.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame.
#'
#' @examples
#' \dontrun{
#' getauthorsforitem('RePEc:eee:enepol:v:78:y:2015:i:c:p:41-50', code = YOURCODE)
#' }
#'
#' @export

getauthorsforitem <- function(x, code = NA) {

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

  f <- paste0(root, 'getauthorsforitem=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  return(res)
}

#' @rdname getauthorsforitem
#' @export
get_authors_for_item <- getauthorsforitem
