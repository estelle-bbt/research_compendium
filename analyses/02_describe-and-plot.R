# Get the results from the exercice
#
# To understand how the research compendium
# deal with ggplot and get into quarto
# 

ecoregion_per_ursidae_data <- ecoregion_per_ursidae()

ecoregion_per_ursidae_plot <- get_ecoregion_per_ursidae_plot()

# ggsave("figures/02_ecoregion_per_ursidae.jpeg",ecoregion_per_ursidae_plot)
