#' Produce derived data
#'
#' @description 
#' Merge pantheria and wildfinder dataset
#' to get correlation between body mass and biome
#'
#' @return This function returns derived data with informations about both
#' species traits and their habitats
#' 
#' @export

produce_derived_data <- function(){
  wildfinder_ecoregions_species_data %>%
      dplyr::left_join(wildfinder_mammals_list_data,by=dplyr::join_by(species_id)) %>%
      dplyr::left_join(wildfinder_ecoregions_list_data,by=dplyr::join_by(ecoregion_id)) %>%
      na.omit() %>%
      dplyr::left_join(pantheria_data,by=dplyr::join_by(sci_name==Binomial)) %>%
      na.omit()
}