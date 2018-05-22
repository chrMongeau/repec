#' Provides extended info about author
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame. Note: columns `article` and `paper` are data.frames.
#'
#' @examples
#' \dontrun{
#' getauthorrecordraw('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export


getauthorrecordraw <- function(id, code = NA) {
  repec_api_with_id(method = 'getauthorrecordraw', id = id)
}
