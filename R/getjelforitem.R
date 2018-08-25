#' Get JEL codes for item
#'
#' @param id RePEc handle for an item.
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

getjelforitem <- function(id, code = NA) {
  repec_api_with_id(method = 'getjelforitem', id = id)
}

#' @rdname getjelforitem
#' @export
get_jel_foritem <- getjelforitem
