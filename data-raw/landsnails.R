library(readr)
library(dplyr, warn.conflicts=FALSE)
library(janitor, warn.conflicts=FALSE)

landsnails = read_delim("data-raw/landsnails_datafile.txt",
                        delim="\t",
                        col_types='cfdddddiiiiiiicccccdcccc') %>%
  clean_names() %>%
  select(-code, -locality_1, -image, -depository, -date_of_collecting,
         -collector, -locality, -country, -canton) %>%
  select(-starts_with("band")) %>%
  separate(coordinates_dd, c("latitude", "longitude"), sep=" ", extra="drop") %>%
  mutate(latitude = as.numeric(substr(latitude, 1, nchar(latitude)-2)),
         longitude = as.numeric(substr(longitude, 1, nchar(latitude)-2)))


usethis::use_data(landsnails, overwrite = TRUE)
