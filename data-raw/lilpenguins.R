pp = palmerpenguins::penguins
lilpenguins = pp[complete.cases(pp),]
usethis::use_data(lilpenguins, overwrite = TRUE)
