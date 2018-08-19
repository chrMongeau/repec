#' Verifies whether the server is alive
#'
#' @return TRUE if the server if alive, FALSE otherwise.
#'
#' @examples
#' \dontrun{
#' areyouthere()
#' }
#'
#' @export

areyouthere <- function() {
  res <- jsonlite::fromJSON('https://api.repec.org/call.cgi?areyouthere=1')

  if ('error' %in% names(res) && ncol(res) > 1) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

#' @rdname areyouthere
#' @export
are_you_there <- areyouthere
