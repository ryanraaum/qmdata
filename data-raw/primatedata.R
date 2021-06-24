library(ape)
library(readr)

primatedata = read_csv("data-raw/primatedata.csv", col_types='ccddddd')
primatetree = read.nexus("data-raw/primatetree.nex")

usethis::use_data(primatedata, overwrite = TRUE)
usethis::use_data(primatetree, overwrite = TRUE)
