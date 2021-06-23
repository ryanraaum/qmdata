birds = tibble::tibble(read.table("data-raw/birds.txt"))
usethis::use_data(birds, overwrite = TRUE)
