#' Provides H-index
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return H-index.
#'
#' @examples
#' \dontrun{
#' gethindex('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export

gethindex <- function(id, code = NA) {
  repec_api_with_id(method = 'gethindex', id = id)
}

#' @rdname gethindex
#' @export
get_h_index <- gethindex
