#' Create a flash card
#'
#' Create a flash card  with desired data frame
#'
#' @param data df with front and back columns
#' @param frontColor frond side background color
#' @param backColor back side background color
#' @param front_text_color frond text color
#' @param back_text_color back text color
#' @param width width
#' @param height height
#' @param elementId element id
#'
#' @import htmlwidgets
#' @examples
#' df1 <- data.frame(
#' front = c("Title front","contentfront", "content second line"),
#' back =c("Title back","content back", "second line")
#' )
#' flashCard(df1, elementId = "card", front_text_color = "grey")
#'
#'
#' @export
flashCard <- function(data, frontColor = '#090e87', backColor = '#3443c9',front_text_color = "white",
                      back_text_color = "white", width = "300px", height = "135px", elementId = NULL) {

  # forward options using x
  x = list(
    data = jsonlite::toJSON(
      data, dataframe = "columns", null = "null", na = "null", auto_unbox = TRUE,
      use_signif = TRUE, force = TRUE,
      POSIXt = "ISO8601", UTC = TRUE, rownames = FALSE, keep_vec_names = TRUE,
      json_verbatim = TRUE
    ),
    frontColor = frontColor,
    backColor = backColor,
    front_text_color = front_text_color,
    back_text_color = back_text_color
  )
  # create widget
  htmlwidgets::createWidget(
    name = 'flashCard',
    x,
    width = width,
    height = height,
    package = 'flashCard',
    elementId = elementId
  )
}

#' Shiny bindings for flashCard
#'
#' Output and render functions for using flashCard within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width width of the widget
#' @param height height of the widget
#' @param expr An expression that generates a flashCard
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name flashCard-shiny
#'
#' @export
flashCardOutput <- function(outputId, width = "300px", height = "135px"){
  htmlwidgets::shinyWidgetOutput(outputId, 'flashCard', width, height, package = 'flashCard')
}

#' @rdname flashCard-shiny
#' @export
renderFlashCard <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, flashCardOutput, env, quoted = TRUE)
}
