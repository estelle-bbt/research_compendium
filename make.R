# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
devtools::load_all()

# Run project ----

## Download raw data ----
source(here::here("analyses", "00_download-data.R"))

## Load and clean data ----
source(here::here("analyses", "01_load-clean-data.R"))

## Get a simple plot ----
source(here::here("analyses", "02_simple_plot.R"))

## Get a complex plot ----
source(here::here("analyses", "03_complex_plot.R"))
