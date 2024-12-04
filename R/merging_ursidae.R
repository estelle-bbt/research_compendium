#' Merging Ursidae
#'
#' @description 
#' To get the ecoregions where we find Ursidae.
#'
#' @return This function returns the merged dataset.
#' 
#' @export

merging_ursidae <- function(x,y,z){
  x |>
    dplyr::left_join(y,by=dplyr::join_by(species_id)) |>
    dplyr::left_join(z,by=dplyr::join_by(ecoregion_id))
}
