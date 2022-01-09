
<!-- README.md is generated from README.Rmd. Please edit that file -->

# flashCard <img src="man/figures/flashCard_hex.png"  width="180px" align="right"/>

<!-- badges: start -->
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/flashCard)](https://cran.r-project.org/package=flashCard)
[![Download](https://cranlogs.r-pkg.org/badges/grand-total/flashCard)](https://cranlogs.r-pkg.org/badges/grand-total/flashCard)
<!-- badges: end -->

Here is a Shiny demo repo: https://github.com/jienagu/flashCard_Shiny_Demo

Live Demo on shinyapp.io: https://appforiarteam.shinyapps.io/flashCard_demo/

Live podcast tutorial on 32:38 : https://shinydevseries.com/post/episode-16-jmclellan/


## Installation

``` r
install.packages("flashCard")
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

![demo_gif](man/figures/flashCard.gif)

## Feature update

Users can use `text_align` to customize text alignment in the flash Card, please use developer version (v0.1.1) to test it out!

Dev version installation

``` r
devtools::install_github("jienagu/flashCard")
```

``` r
library(flashCard)
df1 <- data.frame(
  front = c("Title front","contentfront", "content second line"),
  back =c("Title back","content back", "second line")
)
flashCard(df1, elementId = "card", front_text_color = "white", text_align = "left", 
          width = "300px")

```

![image](https://user-images.githubusercontent.com/15113457/148706172-e32977e8-9206-45f6-81f3-4629704912a5.png)


## App examples


* Ganapathy Palanimuthu's Flash Card App repo: https://github.com/ganapap1/FlashCard/tree/main.  YouTube Demo: https://www.youtube.com/watch?v=x59NfU0NsRw


