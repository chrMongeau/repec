#' Provides info about author, mostly in the form of handles
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame
#'
#' @examples
#' \dontrun{
#' getauthorrecordfull('pmo915', code = YOURCODE)
#' }
#'
#' @export

getauthorrecordfull <- function(id, code = NA) {
  repec_api_with_id(method = 'getauthorrecordfull', id = id)
}

#' @rdname getauthorrecordfull
#' @export
get_author_record_full <- getauthorrecordfull
