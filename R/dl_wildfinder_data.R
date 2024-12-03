#' Download WILDFINDER dataset
#'
#' @description 
#' This function downloads the WINDERFINDER dataset (csv file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' The file starting with `wildfinder` will be stored in 
#' `data/wildfinder/`. This folder will be created if required.
#'
#' @return This function returns the path (`character`) to the downloaded file.
#' 
#' @export
dl_wildfinder_data <- function(x){
  
  ## Destination path ---- 
  path <- here::here("data", "wildfinder")
  
  ## Create destination directory ----
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  
  ## File name ----
  # filename <- "wildfinder-ecoregions_list.csv"
  filename <- x
  
  ## GitHub base URL ----
  base_url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/"
  
  ## Build full URL ----
  full_url <- paste0(base_url, filename)
  
  ## Build full path ----
  dest_file <- file.path(path, filename)
  
  ## Download file ----
  utils::download.file(url      = full_url,
                       destfile = dest_file,
                       mode     = "wb")
  return(dest_file)
}

