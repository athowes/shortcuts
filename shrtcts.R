#' `orderly` develop start plus
#'
#' Like `orderly::orderly_develop_start` but also changes the directory:
#' if you have `report/script.R` then it will set your directory to that file,
#' as well as calling `orderly::orderly_develop_start("report")`.
#'
#' @shortcut Ctrl+D
file <- rstudioapi::getSourceEditorContext()$path
orderly_report <- dirname(file)
orderly::orderly_develop_start(orderly_report)
setwd(orderly_report)

#' `orderly` develop clean plus
#'
#' Like `orderly::orderly_develop_clean` but for every report in your repository.
#'
#' @shortcut Ctrl+T
setwd(rprojroot::find_rstudio_root_file())
tasks <- list.files("src")
lapply(tasks, orderly::orderly_develop_clean)
