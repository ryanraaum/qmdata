library(ggmosaic)
library(dplyr)

flyrules = fly %>%
  select(do_you_recline, rude_to_recline, has_child_under_18, rude_to_bring_baby) %>%
  na.omit()

usethis::use_data(flyrules, overwrite = TRUE)
