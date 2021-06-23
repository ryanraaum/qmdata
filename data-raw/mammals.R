library(readr)
library(dplyr)
mammals = read_csv("data-raw/mammals.csv", col_types='iccccddddd') %>%
  rename(bodytemp = temperature) %>%
  select(-taxon_number)
lilmammals = mammals %>%
  filter(order %in% c("Primates", "Lagomorpha", "Afrosoricida")) %>%
  drop_na(mass, bmr)

usethis::use_data(mammals, overwrite = TRUE)
usethis::use_data(lilmammals, overwrite = TRUE)
