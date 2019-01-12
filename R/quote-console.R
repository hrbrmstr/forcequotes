#' Get a random Star Wars quote and display it stylishly to the console
#'
#' @md
#' @param faction faction (see [random_quote()])
#' @export
quote_console <- function(faction = NULL) {

  x <- random_quote(faction)

  cw <- cli::cli_sitrep()$console_width

  cli::boxx(
    label = crayon::white(strwrap(x$starWarsQuote, width = cw)),
    width = cw,
    float = "center",
    border_col = "gold1"
  )

}