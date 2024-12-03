# Load and clean data
#
# This script will load data
# and proceed to some cleaning
#

## Load Pantheria data ----
pantheria_data <- read.csv(pantheria_path,sep="\t")

## Load Wildfinder data ----
wildfinder_ecoregions_list_data <- read.csv(wildfinder_ecoregions_list_path)
wildfinder_ecoregions_species_data <- read.csv(wildfinder_ecoregions_species_path)
wildfinder_mammals_list_data <- read.csv(wildfinder_mammals_list_path)

str(pantheria_data)
str(wildfinder_ecoregions_list_data)
str(wildfinder_ecoregions_species_data)
str(wildfinder_mammals_list_data)

## Clean pantheria_data ----

# remove all characters before underscore
pantheria_data <- pantheria_data %>%
  dplyr::rename_with(~ sub("^[^_]*_", "", .))

