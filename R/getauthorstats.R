#' Provides Author's statistics
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return Author's statistics.
#'
#' @examples
#' \dontrun{
#' getauthorstats('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export

getauthorstats <- function(id, code = NA) {
  repec_api_with_id(method = 'getauthorstats', id = id)
}

#' @rdname getauthorstats
#' @export
get_author_stats <- getauthorstats
