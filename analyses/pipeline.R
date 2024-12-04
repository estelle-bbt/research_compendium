library(targets)
library(tarchetypes)
library(ggplot2)

targets::tar_source()

list(
  # Make the workflow depends on the raw data file
  tar_target(name = wildfinder_ecoregions_list_file, command = here::here("data/wildfinder", "wildfinder-ecoregions_list.csv"), 
             format = "file"), 
  tar_target(name = wildfinder_ecoregions_species_file, command = here::here("data/wildfinder", "wildfinder-ecoregions_species.csv"), 
             format = "file"), 
  tar_target(name = wildfinder_mammals_list_file, command = here::here("data/wildfinder", "wildfinder-mammals_list.csv"), 
             format = "file"), 
  
  # Read the data and return a data.frame
  tar_target(name = wildfinder_ecoregions_list_data, command = readr::read_csv(wildfinder_ecoregions_list_file)),
  tar_target(name = wildfinder_ecoregions_species_data, command = readr::read_csv(wildfinder_ecoregions_species_file)),
  tar_target(name = wildfinder_mammals_list_data, command = readr::read_csv(wildfinder_mammals_list_file)),
  
  # Filter the data
  tar_target(ursidae_data, filter_ursidae(wildfinder_mammals_list_data)),
  
  # Merging the data
  tar_target(merged_data, merging_ursidae(ursidae_data,wildfinder_ecoregions_species_data,wildfinder_ecoregions_list_data)),
  
  # Count ecoregions
  tar_target(count_ecoregions, ecoregion_per_ursidae(merged_data)), 
  
  # Get Plot
  tar_target(plot_ecoregions, get_ecoregion_per_ursidae_plot(count_ecoregions)),
  
  # Save Plot
  tar_target(save_plot_ecoregions, save_ecoregion_per_ursidae_plot(plot_ecoregions),format = "file"),
  
  # Quarto doc
  tarchetypes::tar_quarto(index, "index.qmd") 
)
