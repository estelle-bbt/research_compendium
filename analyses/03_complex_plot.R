# Get a more complex plot
# which need derived data produced with a function
#

## Get the derived data ----

derived_data <- produce_derived_data()

## Get the complex plot ----

complex_plot <- ggplot(data = derived_data, aes(x=biome,y=AdultBodyMass_g)) +
  geom_boxplot()

ggsave("figures/03_complex_plot.jpeg",complex_plot)