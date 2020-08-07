library(testthat)
library(here)
library(flashCard)
context("test flashCard is functioning properly")


testthat::test_that(
  "flashCard() produces expected", {
    df1 <- data.frame(
      front = c("Title front","contentfront", "content second line"),
      back =c("Title back","content back", "second line")
    )
    result <- flashCard::flashCard(df1, elementId = "card", front_text_color = "grey")

    as.character(result$x$data) %>%
      expect_equal("{\"front\":[\"Title front\",\"contentfront\",\"content second line\"],\"back\":[\"Title back\",\"content back\",\"second line\"]}")
  }
)
