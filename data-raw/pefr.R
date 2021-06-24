library(readr)
pefr = read_csv("data-raw/pefr.csv", col_types='ddf') %>%
  rename_with(tolower)
usethis::use_data(pefr, overwrite = TRUE)
