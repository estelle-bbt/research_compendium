#' Merging Ursidae
#'
#' @description 
#' To get the ecoregions where we find Ursidae.
#'
#' @return This function returns the merged dataset.
#' 
#' @export

merging_ursidae <- function(){
  ursidae_data %>%
    dplyr::left_join(wildfinder_ecoregions_species_data,by=dplyr::join_by(species_id)) %>%
    dplyr::left_join(wildfinder_ecoregions_list_data,by=dplyr::join_by(ecoregion_id))
}
