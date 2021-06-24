library(ape)
library(readr)

primatedata = read.csv("data-raw/primatedata.csv")
primatetree = read.nexus("data-raw/primatetree.nex")

usethis::use_data(primatedata, overwrite = TRUE)
usethis::use_data(primatetree, overwrite = TRUE)
