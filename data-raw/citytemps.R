library(readr)
citytemps = read_csv("data-raw/citytemps.csv", col_types='cnnf') %>%
  rename(city = City,
         temperature = JanTemp,
         latitude = Lat,
         region = Region)
usethis::use_data(citytemps, overwrite = TRUE)
