
<!-- README.md is generated from README.Rmd. Please edit that file -->

# flashCard <img src="flashCard_hex.png"  width="180px" align="right"/>

<!-- badges: start -->
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/flashCard)](https://cran.r-project.org/package=flashCard)
<!-- badges: end -->


## Installation

``` r
devtools::install_github("jienagu/flashCard")
```

This is package is to create a flash card for Shiny application with
desired data.frame.

## Introduction

Simply create a data frame with `front` column and `back` column. Then
put this data frame into `flashCard()` function, we will get a nice
flash card.

``` r
library(flashCard)
df1 <- data.frame(
  front = c("Title front","contentfront", "content second line"),
  back =c("Title back","content back", "second line")
)
flashCard(df1, elementId = "card", front_text_color = "white")
```

![demo_gif](flashCard.gif)
