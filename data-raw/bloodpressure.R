library(dplyr)
bloodpressure = tibble::tibble(read.table("data-raw/bloodpress.txt", header=TRUE))
bloodpressure = bloodpressure %>%
  rename(patient = Pt,
         bp = BP,
         age = Age,
         weight = Weight,
         bsa = BSA,
         duration = Dur,
         pulse = Pulse,
         stress = Stress) %>%
  select(-patient)
usethis::use_data(bloodpressure, overwrite = TRUE)
