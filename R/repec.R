#' repec: access RePEc data through API
#'
#' `repec` provides a way to interact with the RePEc API (Application
#' Programming Interface) in order to get various information stored
#' on RePEc about authors, items, institutions, etc.
#'
#' By using the functions of this package, you will be able to import
#' RePEc information in R. You will need to ask for an access code
#' by following the instructions at https://ideas.repec.org/api.html
#' The code will be needed when calling most of the functions by using
#' the `code` parameter. One way to avoid passing explicitly the code
#' is to create the `REPEC_API_KEY` environment variable. The code below
#' can be put in your `.RProfile` so that it is always available when
#' you start R:
#'
#' ```
#' # YOURCODE is your personal access code
#' Sys.setenv(REPEC_API_KEY = 'YOURCODE')
#' ```
#'
#' @md
#'
"_PACKAGE"
