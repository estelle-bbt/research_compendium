#' Get the plot with number of ecoregions per Ursidae species
#'
#' @description 
#' To get the plot with number of ecoregion per Ursidae species.
#'
#' @return This function returns the plot with the number of ecoregions per Ursidae species.
#' 
#' @export

get_ecoregion_per_ursidae_plot <- function(){
  ggplot(data=ecoregion_per_ursidae_data,aes(x=sci_name,y=n_ecoregion,fill=sci_name)) +
  geom_point(size=3,shape=21,color="gray30",stroke=1) +
  xlab("Ursidae species") +
  ylab("Number of ecoregions") +
  theme_bw() +
  theme(legend.position="none",
        axis.text.x = element_text(angle = 45,hjust=1))
}