#' Get Short-ID and name from string in name or email
#'
#' @param x string.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame
#'
#' @examples
#' \dontrun{
#' getauthorshortid('christian', code = YOURCODE)
#' }
#'
#' @export

getauthorshortid <- function(x, code = NA) {

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

  # A space is required
  x <- utils::URLencode(paste0(x, ' '))

  f <- paste0(root, 'getauthorshortid=', x, '&code=', code)

  res <- jsonlite::fromJSON(f)

  cols_ord <- c('shortid', 'name', 'last', 'first',
                'middle', 'suffix', 'repecurl')

  return(res[cols_ord])
}

#' @rdname getauthorshortid
#' @export
get_author_short_id <- getauthorshortid
