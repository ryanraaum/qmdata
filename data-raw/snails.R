library(dplyr)
library(readr)
library(tidyr)
snails_raw = read_csv("data-raw/snails.csv", col_types='ddccddddddddddd')

snails = snails_raw %>%
  mutate(thickness = (ST1+ST2+ST3)/3,
         length = (SL1+SL2+SL3)/3) %>%
  rename_with(tolower) %>%
  mutate(treatment = paste(predator, mate, sep='+')) %>%
  rename(fr_age = afr,
         fr_mass = sfr_mass,
         fr_length = sfr_sl,
         age = age_morph) %>%
  select(family, predator, mate, mass, thickness, length, age, treatment, fr_age, fr_mass, fr_length) %>%
  mutate(predator = as.factor(predator),
         mate = as.factor(mate),
         family = as.factor(family),
         treatment = as.factor(treatment)) %>%
  drop_na(thickness, length)

usethis::use_data(snails, overwrite = TRUE)
