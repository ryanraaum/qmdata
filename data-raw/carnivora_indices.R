library(readr)
library(janitor)

carnivora_indices = read_csv("data-raw/Morris_2016_Evolution_Carnivora_indices_data.csv",
                             col_types='ccfdddddddddddddd') %>%
  clean_names()

carnivora_info = read_csv("data-raw/Morris_2016_Evolution_Carnivora_species_info.csv",
                          col_types='ccdddffffff') %>%
  clean_names()

usethis::use_data(carnivora_indices, overwrite = TRUE)
usethis::use_data(carnivora_info, overwrite = TRUE)
