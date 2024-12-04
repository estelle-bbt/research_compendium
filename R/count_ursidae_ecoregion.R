#' Get number of ecoregions per Ursidae species
#'
#' @description 
#' To get the number of ecoregion per Ursidae species.
#'
#' @return This function returns the number of ecoregions per Ursidae species.
#' 
#' @export

ecoregion_per_ursidae <- function(){
  ursidae_ecoregions_data %>%
  dplyr::group_by(sci_name) %>%
  dplyr::summarise(n_ecoregion=dplyr::n_distinct(ecoregion))
}