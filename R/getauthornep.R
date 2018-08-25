#' Get the NEP fields for the papers of an author
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame
#'
#' @examples
#' \dontrun{
#' getauthornep('pmo915', code = YOURCODE)
#' }
#'
#' @export

getauthornep <- function(id, code = NA) {
  repec_api_with_id(method = 'getauthornep', id = id, code = code)
}

#' @rdname getauthornep
#' @export
get_author_nep <- getauthornep
