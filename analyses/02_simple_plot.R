# Get a simple plot
#
# To understand how the research compendium
# deal with ggplot
# 
# plot a simple linear regression : 
# gestation length according to body mass

library(ggplot2)

gestation_mass_plot <- ggplot(data=pantheria_data,aes(x=GestationLen_d,y=AdultBodyMass_g)) +
         geom_point() +
         geom_smooth(method="lm")

ggsave("figures/02_gestation_mass_plot.jpeg",gestation_mass_plot)