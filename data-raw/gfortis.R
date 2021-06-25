library(dplyr)

gfortis = read.csv("data-raw/gfortis.csv")

# data frame for mid-parent regression
gfortis = gfortis %>% rename(brood_id = Offspring.bands,
                   mid_offspring_bd = Mid.offspr,
                   male_id = maleband,
                   male_bd = Male.BD,
                   female_id = femband,
                   female_bd = Female.BD,
                   mid_parent_bd = Mid.parent) %>%
  mutate(brood_id = as.factor(paste0("B", 1:nrow(gfortis))),
         male_id = as.factor(male_id),
         female_id = as.factor(female_id))

# pedigree and data files for animal model
gped = gfortis %>%
  dplyr::select(brood_id, male_id, female_id) %>%
  rename(id = brood_id)
parent_ped = data.frame(id=c(unique(gped$male_id), unique(gped$female_id)),
                        male_id=NA,
                        female_id=NA)
gfortis_ped = rbind(parent_ped, gped)

gfortis_bd = data.frame(animal=as.factor(c(gfortis$brood_id, gfortis$male_id, gfortis$female_id)),
                        bd=c(gfortis$mid_offspring_bd, gfortis$male_bd, gfortis$female_bd)) %>% distinct()


usethis::use_data(gfortis, overwrite = TRUE)
usethis::use_data(gfortis_ped, overwrite = TRUE)
usethis::use_data(gfortis_bd, overwrite = TRUE)
