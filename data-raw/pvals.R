library(readr)
pvals = read_csv("data-raw/pvals.csv", col_types='ld')
usethis::use_data(pvals, overwrite = TRUE)
