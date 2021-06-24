library(readr)
library(dplyr)

tsize = read_csv("data-raw/tusksize.csv")
tusksize = tsize %>%
  drop_na() %>%
  mutate(time = as.factor(time),
         sex = as.factor(sex))

usethis::use_data(tusksize, overwrite = TRUE)
