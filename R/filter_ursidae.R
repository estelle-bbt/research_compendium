#' Filtering Ursidae
#'
#' @description 
#' Filtering Ursidae in the dataset including mammals list.
#'
#' @return This function returns the filtering dataset.
#' 
#' @export

filter_ursidae <- function(){
  wildfinder_mammals_list_data %>%
    dplyr::filter(family=="Ursidae")
}
