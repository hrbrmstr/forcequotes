#' Get a random Star Wars quote and display it stylishly to the console
#'
#' @md
#' @param faction faction (see [random_quote()])
#' @param foreground should the foreground text be in black or white (defaults to `white`).
#' @export
quote_console <- function(faction = NULL, foreground = c("white", "black")) {

  foreground <- match.arg(foreground[1], c("white", "black"))

  x <- random_quote(faction)

  cw <- cli::cli_sitrep()$console_width

  q <- strwrap(x$starWarsQuote, width = cw)

  cli::boxx(
    label = switch(foreground, white = crayon::white(q), black = crayon::black(q)),
    width = cw,
    float = "center",
    border_col = "gold1"
  )

}