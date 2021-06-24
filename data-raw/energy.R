library(readr)

energy = read_csv("data-raw/energy.csv", col_types='ddf')

usethis::use_data(energy, overwrite = TRUE)
