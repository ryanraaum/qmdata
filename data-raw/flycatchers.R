library(dplyr)

color_cuckold = read.csv("data-raw/flycatchers/STFL color - cuckold.csv")
female_color = read.csv("data-raw/flycatchers/STFL female color - EPP.csv")
female_morphology = read.csv("data-raw/flycatchers/STFL female morphology - EPP.csv")
flight_tube = read.csv("data-raw/flycatchers/STFL flight tube.csv")
male_color = read.csv("data-raw/flycatchers/STFL male color - EPP.csv")
male_morphology = read.csv("data-raw/flycatchers/STFL male morphology - EPP.csv")
mensural_cuckold = read.csv("data-raw/flycatchers/STFL mensural - cuckold.csv")

# Notes
# - the 'asym' variable differs between the _color and _morphology files


# here just creating a morphometrics dataset
unique_females = female_morphology %>%
  select(-year, -nest, -EPP) %>%
  na.omit() %>%
  distinct(social, .keep_all=TRUE) %>%
  mutate(sex='female')

unique_males = male_morphology %>%
  select(-year, -site, -nest, -EPP, -class, -prop, -conditionC, -asymP) %>%
  na.omit() %>%
  distinct(social, .keep_all=TRUE) %>%
  mutate(sex='male')

flycatchers = as_tibble(bind_rows(unique_females, unique_males)) %>%
  select(-social, -condition) %>%
  mutate(sex = as.factor(sex))

usethis::use_data(flycatchers, overwrite = TRUE)
