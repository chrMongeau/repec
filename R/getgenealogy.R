#' Provides Author's genealogy
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return Author's genealogy.
#'
#' @examples
#' \dontrun{
#' getgenealogy('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export

getgenealogy <- function(id, code = NA) {
  repec_api_with_id(method = 'getgenealogy', id = id, code = code)
}

#' @rdname getgenealogy
#' @export
get_genealogy <- getgenealogy
