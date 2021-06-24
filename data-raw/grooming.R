library(readr)
grooming = read_csv("data-raw/grooming.csv", col_types='ffddf')
usethis::use_data(grooming, overwrite = TRUE)
