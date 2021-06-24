library(ape)

teedata = read.csv("data-raw/teedata.csv")
teedata$split = as.factor(teedata$split)
names(teedata)[3] = "group"

teetree = read.tree("data-raw/teetree.nwk")

usethis::use_data(teedata, overwrite = TRUE)
usethis::use_data(teetree, overwrite = TRUE)
