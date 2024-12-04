# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
# devtools::load_all()

## Visualize the pipeline ----
# targets::tar_visnetwork()

# Run project ----
targets::tar_make()

## Visualize the pipeline ----
targets::tar_visnetwork()

# ## Get a simple plot ----
# source(here::here("analyses", "02_simple_plot.R"))
# 
# ## Get a complex plot ----
# source(here::here("analyses", "03_complex_plot.R"))
