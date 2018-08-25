#' Get record of Institution
#'
#' @param id RePEc handle for an institution
#' @param code User code required to use API. Included in every API call.
#'   If not supplied, the REPEC_API_KEY environment variable will be used.
#'
#' @return data.frame.
#'
#' @examples
#' \dontrun{
#' getinstrecord('RePEc:edi:dechiit', code = YOURCODE)
#' }
#'
#' @export

getinstrecord <- function(id, code = NA) {
  repec_api_with_id(method = 'getinstrecord', id = id)
}

#' @rdname getinstrecord
#' @export
get_inst_record <- getinstrecord
