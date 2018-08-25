#' Provides Author's first publication year
#'
#' @param id Short-ID.
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return Author's first publication year.
#'
#' @examples
#' \dontrun{
#' getfirstpubyear('pmo915', code = YOURCODE)
#' }
#'
#' @md
#' @export

getfirstpubyear <- function(id, code = NA) {
  repec_api_with_id(method = 'getfirstpubyear', id = id, code = code)
}

#' @rdname getfirstpubyear
#' @export
get_first_pub_year <- getfirstpubyear
