#' Returns the IP address you use to call the API
#'
#' @return String with IP.
#'
#' @examples
#' \dontrun{
#' whatismyip()
#' }
#'
#' @export

whatismyip <- function() {
  res <- jsonlite::fromJSON('https://api.repec.org/call.cgi?whatismyip=1')

  return(res)
}

#' @rdname whatismyip
#' @export
what_is_myip <- whatismyip
