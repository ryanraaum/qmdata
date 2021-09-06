library(janitor, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)
library(tidyr)

options(stringsAsFactors = FALSE)
boas_family_raw = read.csv("data-raw/boas/boas_family.txt", na.strings=".") %>%
  clean_names()

boas_master_raw = read.csv("data-raw/boas/boas_master.txt", na.strings=".") %>%
  clean_names()

boas_h2 = boas_family_raw %>%
  drop_na(stature, m_stat, f_stat) %>%
  select(fam_id2, immgroup, sex, age,
         hd_lng, hd_wdt, bizyg, stature, cephalic, wfi, usborn,
         m_hd_lng, m_hd_wdt, m_bizyg, m_stat, m_ceph, m_wfi,
         f_hd_lng, f_hd_wdt, f_bizyg, f_stat, f_ceph, f_wfi) %>%
  mutate(sex=factor(if_else(sex==0, "f", "m")),
         usborn=factor(if_else(usborn==0, "foreign-born", "us-born"))) %>%
  filter(immgroup == 7, age >= 19) %>%
  select(-immgroup)

boas_stature = boas_master_raw %>%
  drop_na(stature, age) %>%
  mutate(sex=factor(if_else(sex==0, "f", "m")),
         usborn=factor(if_else(usborn==0, "foreign-born", "us-born")),
         immgroup=factor(immgroup,
                labels=c("sicilian", "central_italian", "bohemian",
                         "hungarian_slovak", "polish", "scotch", "hebrew"))) %>%
  filter(stature >= 50) %>%
  select(id, immgroup, sex, imm_yr, age, stature, usborn)


usethis::use_data(boas_h2, overwrite = TRUE)
usethis::use_data(boas_stature, overwrite = TRUE)
