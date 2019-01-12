
[![Travis-CI Build
Status](https://travis-ci.org/hrbrmstr/forcequotes.svg?branch=master)](https://travis-ci.org/hrbrmstr/forcequotes)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/forcequotes/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/forcequotes)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/forcequotes)](https://cran.r-project.org/package=forcequotes)

![](man/figures/force-quotes.png)

# forcequotes

Return Random Star Wars Quotes

## Description

Now you can use the R ‘Force’ to get random quotes from your favorite
space opera. This is a thin wrapper to the ‘Star Wars Quote API’
(<http://swquotesapi.digitaljedi.dk/index.html>).

## What’s Inside The Tin

The following functions are implemented:

  - `quote_console`: Get a random Star Wars quote and display it
    stylishly to the console
  - \`random\_quote: Return a Random Star Wars Quote

## Installation

``` r
devtools::install_git("https://gitlab.com/hrbrmstr/forcequotes.git")
# or
devtools::install_github("hrbrmstr/forcequotes")
```

## Usage

``` r
library(forcequotes)

# current version
packageVersion("forcequotes")
## [1] '0.1.0'
```

### Basic use

``` r
random_quote()
##   id                                      starWarsQuote faction
## 1 42 Your focus determines your reality. ? Qui-Gon Jinn       0

random_quote(faction=0)
##   id                                              starWarsQuote faction
## 1 25 You were my brother, Anakin. I loved you. — Obi-Wan Kenobi       0

random_quote(faction=1)
##   id                                                                         starWarsQuote faction
## 1 13 This technological terror is nothing compared to the power of the force - Darth Vader       1

random_quote(faction=2)
##   id                                                                          starWarsQuote faction
## 1 24 Well, if droids could think, there’d be none of us here, would there? — Obi-Wan Kenobi       0

random_quote(faction=3)
##   id                                                              starWarsQuote faction
## 1 21 Why, you stuck-up, half-witted, scruffy-looking nerf herder! — Leia Organa       0

random_quote(faction=4)
##   id                                              starWarsQuote faction
## 1 52 Jyn, I’ll be there for you. Cassian said I had to. — K-2SO       0
```

### Console shenanigans

``` r
quote_console()
##                        ┌────────────────────────────────────────────────────────────────────────┐
##                        │                                                                        │
##                        │   The ability to speak does not make you intelligent. ? Qui-Gon Jinn   │
##                        │                                                                        │
##                        └────────────────────────────────────────────────────────────────────────┘
```

## forcequotes Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        5 | 0.83 |  35 | 0.71 |          14 | 0.33 |       44 | 0.52 |
| Rmd  |        1 | 0.17 |  14 | 0.29 |          29 | 0.67 |       41 | 0.48 |

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
