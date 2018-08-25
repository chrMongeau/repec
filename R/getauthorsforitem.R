#' Get Authors for an item
#'
#' @param id RePEc handle for an item.
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

getauthorsforitem <- function(id, code = NA) {
  repec_api_with_id(method = 'getauthorsforitem', id = id)
}

#' @rdname getauthorsforitem
#' @export
get_authors_for_item <- getauthorsforitem
