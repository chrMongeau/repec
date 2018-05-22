#' Provides Twitter handle
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return String with the Twitter author linked to the Short-ID.
#'
#' @examples
#' \dontrun{
#' getauthortwitter('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export


getauthortwitter <- function(id, code = NA) {
  repec_api_with_id(method = 'getauthortwitter', id = id)
}
