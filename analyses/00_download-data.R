# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#

## Download PanTHERIA database ----
pantheria_path  <- dl_pantheria_data()

## Download WWF WildFinder database ----
wildfinder_ecoregions_list_path <- dl_wildfinder_data("wildfinder-ecoregions_list.csv")
wildfinder_ecoregions_species_path <- dl_wildfinder_data("wildfinder-ecoregions_species.csv")
wildfinder_mammals_list_path <- dl_wildfinder_data("wildfinder-mammals_list.csv")



