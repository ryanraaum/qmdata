library(readxl)
library(dplyr)
library(janitor)

assassin_bugs = read_xlsx("data-raw/assassin_bugs.xlsx") %>%
  clean_names() %>%
  na.omit() %>%
  rename(pronotum_width = pn,
         pronotum_darkness = md,
         thorax_darkness = ml) %>%
  select(-id) %>%
  mutate(sex = factor(sex))

usethis::use_data(assassin_bugs, overwrite = TRUE)
