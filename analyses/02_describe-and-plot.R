# Get the results from the exercice
#
# To understand how the research compendium
# deal with ggplot and get into quarto
# 

ecoregion_per_ursidae_data <- ecoregion_per_ursidae()

ecoregion_per_ursidae_plot <- ggplot(data=ecoregion_per_ursidae_data,aes(x=sci_name,y=n_ecoregion,fill=sci_name)) +
  geom_point(size=3,shape=21,color="gray30",stroke=1) +
  xlab("Ursidae species") +
  ylab("Number of ecoregions") +
  theme_bw() +
  theme(legend.position="none",
        axis.text.x = element_text(angle = 45,hjust=1))

ggsave("figures/02_ecoregion_per_ursidae.jpeg",ecoregion_per_ursidae_plot)
