library(ape)

jawtree = read.tree("data-raw/jawtree.nwk")
jawshape = read.csv("data-raw/jawshape.csv")

usethis::use_data(jawshape, overwrite = TRUE)
usethis::use_data(jawtree, overwrite = TRUE)
