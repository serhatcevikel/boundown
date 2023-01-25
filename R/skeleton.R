# from https://github.com/rstudio/bookdown/blob/master/R/utils.R
boundown_file <- function(...) {
  system.file(..., package = 'boundown', mustWork = TRUE)
}

# from https://github.com/rstudio/bookdown/blob/master/R/skeleton.R
boundown_skeleton <- function(path = getwd()) {

  # ensure directory exists
#  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # copy 'resources' folder to path
  resources <- boundown_file('rstudio', 'templates', 'project', 'resources')

  R.utils::copyDirectory(from = resources,
                         to = path,
                         recursive = TRUE)
}
