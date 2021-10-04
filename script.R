#' Install the R package
remotes::install_github("gadenbuie/shrtcts")

#' Copy the shrtcts files to your settings (will be different by person)
settings_file <- "/home/adamh/.config/shrtcts/.shrtcts.R"
file.copy("shrtcts.R", settings_file, overwrite = TRUE)

#' Refresh
shrtcts::add_rstudio_shortcuts()
rstudioapi::restartSession()
