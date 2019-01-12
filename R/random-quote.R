#' Return a Random Star Wars Quote
#'
#' @md
#' @param faction if not `NULL` than a value of `0:4` to specify a faction
#' @references <http://swquotesapi.digitaljedi.dk/index.html>;
#'     <http://swquotes.digitaljedi.dk/home>
#' @return data frame of a single quote
#' @export
#' @examples
#' random_quote()
#' random_quote(faction = 3)
random_quote <- function(faction = NULL) {

  if (!is.null(faction)) {
    faction <- as.integer(faction[1])
    if ((faction < 0) || (faction > 4)) {
      stop("'faction' must be 0:4")
    }
  }

  httr::GET(
    url = "http://swquotesapi.digitaljedi.dk/api/SWQuote/RandomStarWarsQuote",
    query = list(
      faction = faction
    ),
    httr::user_agent("forcequotes R package; <https://sr.ht/~hrbrmstr/forcequotes>")
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text")

  out <- jsonlite::fromJSON(out)

  out <- as.data.frame(out, stringsAsFactors=FALSE)
  class(out) <- c("tbl_df", "tbl", "data.frame")

  out

}
