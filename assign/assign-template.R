#' ---
#' title: "Assignment XX"
#' author: "YourName"
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     theme: readable
#'     code_download: true
#'   word_document: default
#'   pdf_document:
#' ---
#'

# This sets up some useful options for output. You can also set the default figure size

#+ echo=FALSE
knitr::opts_chunk$set(
  warning = FALSE,   # avoid warnings and messages in the output
  message = FALSE,
  fig.height = 5,    # set default figure size
  fig.width = 6
)


#' ## Problem 1

#' Just put your code here, perhaps with comments like this. Use the special markdown comments, `#' `

#' ### Load libraries ...
library(vcdExtra)

#' ### Data preparation ...
