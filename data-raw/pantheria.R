library(readr)
library(stringr)
pt = read_tsv("data-raw/PanTHERIA_1-0_WR05_Aug2008.txt", na=c("-999.00", "-999"))
names(pt) = str_replace(names(pt), "^[0-9]+-[0-9]+_", "")

pantheria = pt

lilpantheria = pt %>%
  filter(MSW05_Order %in% c("Primates", "Rodentia", "Artiodactyla")) %>%
  select(MSW05_Order, MSW05_Family, MSW05_Genus, MSW05_Species,
         AdultHeadBodyLen_mm, AdultBodyMass_g, AgeatFirstBirth_d, InterbirthInterval_d) %>%
  rename(order = MSW05_Order,
         family = MSW05_Family,
         genus = MSW05_Genus,
         species = MSW05_Species,
         length = AdultHeadBodyLen_mm,
         mass = AdultBodyMass_g,
         afb = AgeatFirstBirth_d,
         interbirth = InterbirthInterval_d) %>%
  drop_na()

usethis::use_data(pantheria, overwrite = TRUE)
usethis::use_data(lilpantheria, overwrite = TRUE)
