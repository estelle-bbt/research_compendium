#' Filtering Ursidae
#'
#' @description 
#' Filtering Ursidae in the dataset including mammals list.
#'
#' @return This function returns the filtering dataset.
#' 
#' @export

filter_ursidae <- function(x){
  x |>
    dplyr::filter(family=="Ursidae")
}
