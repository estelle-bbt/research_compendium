# Load and clean data
#
# This script will load data
# and proceed to some cleaning
#

## Load Pantheria data ----
pantheria_data <- readr::read_delim(pantheria_path,delim="\t")

## Load Wildfinder data ----
wildfinder_ecoregions_list_data <- readr::read_csv(wildfinder_ecoregions_list_path)
wildfinder_ecoregions_species_data <- readr::read_csv(wildfinder_ecoregions_species_path)
wildfinder_mammals_list_data <- readr::read_csv(wildfinder_mammals_list_path)

## Filtering Ursidae ----
ursidae_data <- filter_ursidae()

## Merging the three tables ----
ursidae_ecoregions_data <- merging_ursidae()


