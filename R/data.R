#' The Palmer Penguins dataset with only complete cases
#'
#' Includes measurements for penguin species, island in Palmer Archipelago,
#' size (flipper length, body mass, bill dimensions), and sex.
#' This is a subset of palmerpenguins::penguins.
#'
#' @format A data frame (tibble) with 333 rows and 8 variables:
#' \describe{
#'   \item{species}{a factor denoting penguin species (Adélie, Chinstrap and Gentoo)}
#'   \item{island}{a factor denoting island in Palmer Archipelago, Antarctica (Biscoe, Dream or Torgersen)}
#'   \item{bill_length_mm}{a number denoting bill length (millimeters)}
#'   \item{bill_depth_mm}{a number denoting bill depth (millimeters)}
#'   \item{flipper_length_mm}{an integer denoting flipper length (millimeters)}
#'   \item{body_mass_g}{an integer denoting body mass (grams)}
#'   \item{sex}{a factor denoting penguin sex (female, male)}
#'   \item{year}{an integer denoting the study year (2007, 2008, or 2009)}
#' }
#' @source See full source information in the palmerpenguins package:
#' \url{https://cran.r-project.org/web/packages/palmerpenguins/index.html}
"lilpenguins"

#' Geographical variation in bill size and tarsus length across bird species
#'
#' These data are from a study evaluating Allen's rule, which is the proposition
#' that warm-blooded animals have shorter extremities in colder climates to aid
#' in heat retention. In this study, the authors evaluated this proposition across
#' bird species for bill and tarsus (leg) length.
#'
#' @format A data frame (tibble) with 215 rows and 9 variables:
#' \describe{
#'   \item{family}{string: family name}
#'   \item{genus}{string: genus name}
#'   \item{species}{string: species name}
#'   \item{mass}{number: mass in grams}
#'   \item{bill}{number: length in mm}
#'   \item{tarsus}{number: length in mm}
#'   \item{latitude}{number: midpoint of range from equator in degrees}
#'   \item{altitude}{number: midpoint of range in meters}
#'   \item{temperature}{number: minimum temperature at midpoint of range in degrees C}
#' }
#' @source Symonds, Matthew R. E. and Glenn J. Tattersall. 2010. Geographical Variation
#' in Bill Size across Bird Species Provides Evidence for Allen’s Rule. Am Nat 176:188-197.
#' \url{https://doi.org/10.1086/653666} Raw data deposited in Dryad \url{https://doi.org/10.5061/dryad.1421}
"birds"

#' Reproduction and growth data for freshwater snails in relation to environment
#'
#' These data are from a study evaluating the effects of predation risk on growth and
#' reproduction in a hermaphroditic freshwater snail.
#'
#' @format A data frame (tibble) with 711 rows and 10 variables:
#' \describe{
#'   \item{family}{factor: identifier for full-sibling families}
#'   \item{predator}{factor: P=predator, NP=no predator}
#'   \item{mate}{factor: M=mate, NM=no mate}
#'   \item{mass}{number: mass in mg}
#'   \item{thickness}{number: shell thickness in mm}
#'   \item{length}{number: shell length in mm}
#'   \item{age}{number: age in days at time of mass, thickness, and length measurements}
#'   \item{fr_age}{number: age in days at time of first reproduction}
#'   \item{fr_mass}{number: mass in mg at time of first reproduction}
#'   \item{fr_length}{number: length in mm at time of first reproduction}
#' }
#' @source Auld, Josh R. 2010. The effects of predation risk on mating system expression
#' in a freshwater snail. Evolution 64:3476-3494. \url{https://doi.org/10.1111/j.1558-5646.2010.01079.x}
#' Raw data deposited in Dryad \url{https://doi.org/10.5061/dryad.1690}
"snails"

#' Mass and basal metabolic rate data for mammals
#'
#' These data are from a study evaluating the hypothesis that there is a
#' universal metabolic rate–body mass scaling relationship.
#'
#' @format A data frame (tibble) with 696 rows and 9 variables:
#' \describe{
#'   \item{order}{string: taxonomic order}
#'   \item{family}{string: taxonomic family}
#'   \item{genus}{string: taxonomic genus}
#'   \item{species}{string: taxonomic species}
#'   \item{bodytemp}{number: body temperature in degrees C}
#'   \item{mass}{number: mass in g}
#'   \item{mass_sd}{number: within-species mass standard deviation}
#'   \item{bmr}{number: basal metabolic rate in mL O2 / hr}
#'   \item{bmr_sd}{number: within-species bmr standard deviation}
#' }
#' @source Sieg, Annette E., Michael P. O’Connor, James N. McNair, Bruce W. Grant,
#' Salvatore J. Agosta, and Arthur E. Dunham. 2009. Mammalian Metabolic Allometry:
#' Do Intraspecific Variation, Phylogeny, and Regression Models Matter?
#' Am Nat 174:720-733. \url{https://doi.org/10.1086/606023}
#' Raw data deposited in Dryad \url{https://doi.org/10.5061/dryad.712}
"mammals"

#' Subset of mammals dataset
#'
#' A subset of the mammals dataset including only Primates, Afrosoricida,
#' and Lagomorpha. See mammals help for more details.
#'
#' @format A data frame (tibble) with 62 rows and 9 variables:
#' \describe{
#'   \item{order}{string: taxonomic order}
#'   \item{family}{string: taxonomic family}
#'   \item{genus}{string: taxonomic genus}
#'   \item{species}{string: taxonomic species}
#'   \item{bodytemp}{number: body temperature in degrees C}
#'   \item{mass}{number: mass in g}
#'   \item{mass_sd}{number: within-species mass standard deviation}
#'   \item{bmr}{number: basal metabolic rate in mL O2 / hr}
#'   \item{bmr_sd}{number: within-species bmr standard deviation}
#' }
#' @source Sieg, Annette E., Michael P. O’Connor, James N. McNair, Bruce W. Grant,
#' Salvatore J. Agosta, and Arthur E. Dunham. 2009. Mammalian Metabolic Allometry:
#' Do Intraspecific Variation, Phylogeny, and Regression Models Matter?
#' Am Nat 174:720-733. \url{https://doi.org/10.1086/606023}
#' Raw data deposited in Dryad \url{https://doi.org/10.5061/dryad.712}
"lilmammals"

#' Blood pressure and covariates data for twenty hypertensive individuals
#'
#' This seems to be a commonly used exemplar dataset.
#'
#' @format A data frame (tibble) with 20 rows and 7 variables:
#' \describe{
#'   \item{bp}{number: blood pressure in mm Hg}
#'   \item{age}{number: age in years}
#'   \item{weight}{number: weight in kg}
#'   \item{bsa}{number: body surface area in sq m}
#'   \item{duration}{number: duration of hypertension in years}
#'   \item{pulse}{number: basal pulse in beats per minute}
#'   \item{stress}{number: stress index}
#' }
#' @source I don't know that this dataset ultimately originates here,
#' but I found it on the website for STAT 501 at Penn State
#' \url{https://online.stat.psu.edu/stat501/}
"bloodpressure"

#' Tusk length and circumference of African elephants
#'
#' These data are from a study evaluating tusk length and circumference
#' in African elephants before widespread poaching (1966-68) and
#' after (2005-13).
#'
#' @format A data frame (tibble) with 593 rows and 7 variables:
#' \describe{
#'   \item{time}{factor: time period, 1966-68 or 2005-13}
#'   \item{id}{string: elephant identifier}
#'   \item{sex}{factor: f or m}
#'   \item{age}{number: age in years}
#'   \item{height}{number: height at shoulder in cm}
#'   \item{length}{number: exposed tusk length in cm}
#'   \item{circumference}{number: tusk circumferance at lip line in cm}
#' }
#' @source Chiyo, P.I., Obanda, V. and Korir, D.K. (2015), Illegal tusk
#' harvest and the decline of tusk size in the African elephant.
#' Ecol Evol, 5: 5216-5229. \url{https://doi.org/10.1002/ece3.1769}
#' Raw data deposited in Dryad \url{https://doi.org/10.5061/dryad.h6t7j}
"tusksize"

#' Example data for matched pair analysis
#'
#' Comparison of peak expiratory flow rate (PEFR) before and after a walk
#' on a cold winter's day for a random sample of 9 asthmatics. The peak
#' expiratory flow rate measures how fast a person can breathe out (exhale)
#' air. It is one of many tests that measures how well the lungs are working.
#' Measured in liters/minute.
#'
#' @format A data frame (tibble) with 9 rows and 3 variables:
#' \describe{
#'   \item{before}{number: pefr in liters/minute before walking}
#'   \item{after}{number: pefr in liters/minute after walking}
#'   \item{subject}{factor: subject identifier}
#' }
#' @source Online in many places - seems to be a commonly used exemplar.
#' Not sure what the original source is.
"pefr"

#' PanTHERIA contains mammalian life-history, ecology, and geography data
#'
#' A compendium of species level life-history, ecology, and geography data
#' for mammals. This is the table that uses Wilson and Reeder's 3rd edition
#' of Mammal Species of the World (2005).
#'
#' @format A data frame (tibble) with 5,416 rows and 55 variables:
#' \describe{
#'   \item{MSW05_Order}{}
#'   \item{MSW05_Family}{}
#'   \item{MSW05_Genus}{}
#'   \item{MSW05_Species}{}
#'   \item{MSW05_Binomial}{}
#'   \item{ActivityCycle}{}
#'   \item{AdultBodyMass_g}{}
#'   \item{AdultForearmLen_mm}{}
#'   \item{AdultHeadBodyLen_mm}{}
#'   \item{AgeatEyeOpening_d}{}
#'   \item{AgeatFirstBirth_d}{}
#'   \item{BasalMetRate_mLO2hr}{}
#'   \item{BasalMetRateMass_g}{}
#'   \item{DietBreadth}{}
#'   \item{DispersalAge_d}{}
#'   \item{GestationLen_d}{}
#'   \item{HabitatBreadth}{}
#'   \item{HomeRange_km2}{}
#'   \item{HomeRange_Indiv_km2}{}
#'   \item{InterbirthInterval_d}{}
#'   \item{LitterSize}{}
#'   \item{LittersPerYear}{}
#'   \item{MaxLongevity_m}{}
#'   \item{NeonateBodyMass_g}{}
#'   \item{NeonateHeadBodyLen_mm}{}
#'   \item{PopulationDensity_n/km2}{}
#'   \item{PopulationGrpSize}{}
#'   \item{SexualMaturityAge_d}{}
#'   \item{SocialGrpSize}{}
#'   \item{TeatNumber}{}
#'   \item{Terrestriality}{}
#'   \item{TrophicLevel}{}
#'   \item{WeaningAge_d}{}
#'   \item{WeaningBodyMass_g}{}
#'   \item{WeaningHeadBodyLen_mm}{}
#'   \item{References}{}
#'   \item{AdultBodyMass_g_EXT}{}
#'   \item{LittersPerYear_EXT}{}
#'   \item{NeonateBodyMass_g_EXT}{}
#'   \item{WeaningBodyMass_g_EXT}{}
#'   \item{GR_Area_km2}{}
#'   \item{GR_MaxLat_dd}{}
#'   \item{GR_MinLat_dd}{}
#'   \item{GR_MidRangeLat_dd}{}
#'   \item{GR_MaxLong_dd}{}
#'   \item{GR_MinLong_dd}{}
#'   \item{GR_MidRangeLong_dd}{}
#'   \item{HuPopDen_Min_n/km2}{}
#'   \item{HuPopDen_Mean_n/km2}{}
#'   \item{HuPopDen_5p_n/km2}{}
#'   \item{HuPopDen_Change}{}
#'   \item{Precip_Mean_mm}{}
#'   \item{Temp_Mean_01degC}{}
#'   \item{AET_Mean_mm}{}
#'   \item{PET_Mean_mm}{}
#' }
#' @source Jones, K.E., Bielby, J., Cardillo, M., Fritz, S.A.,
#' O'Dell, J., Orme, C.D.L., Safi, K., Sechrest, W., Boakes, E.H.,
#' Carbone, C., Connolly, C., Cutts, M.J., Foster, J.K.,
#' Grenyer, R., Habib, M., Plaster, C.A., Price, S.A., Rigby, E.A.,
#' Rist, J., Teacher, A., Bininda-Emonds, O.R.P., Gittleman, J.L.,
#' Mace, G.M. and Purvis, A. (2009), PanTHERIA: a species-level
#' database of life history, ecology, and geography of extant
#' and recently extinct mammals. Ecology, 90: 2648-2648.
#' \url{https://doi.org/10.1890/08-1494.1}
#' Raw data deposited in figshare \url{https://doi.org/10.6084/m9.figshare.c.3301274.v1}
"pantheria"

#' This is a subset of the PanTHERIA dataset
#'
#' Body length, mass, age at first birth, and interbirth interval for
#' all primates, rodents, and artiodactyls in the PanTHERIA compilation
#' that have no missing data for these variables.
#'
#' @format A data frame (tibble) with 157 rows and 8 variables:
#' \describe{
#'   \item{order}{string: taxonomic order}
#'   \item{family}{string: taxonomic family}
#'   \item{genus}{string: taxonomic genus}
#'   \item{species}{string: taxonomic species}
#'   \item{length}{number: head+body length in mm}
#'   \item{mass}{number: mass in g}
#'   \item{afb}{number: age at first birth in days}
#'   \item{interbirth}{number: interbirth interval in days}
#' }
#' @source Jones, K.E., Bielby, J., Cardillo, M., Fritz, S.A.,
#' O'Dell, J., Orme, C.D.L., Safi, K., Sechrest, W., Boakes, E.H.,
#' Carbone, C., Connolly, C., Cutts, M.J., Foster, J.K.,
#' Grenyer, R., Habib, M., Plaster, C.A., Price, S.A., Rigby, E.A.,
#' Rist, J., Teacher, A., Bininda-Emonds, O.R.P., Gittleman, J.L.,
#' Mace, G.M. and Purvis, A. (2009), PanTHERIA: a species-level
#' database of life history, ecology, and geography of extant
#' and recently extinct mammals. Ecology, 90: 2648-2648.
#' \url{https://doi.org/10.1890/08-1494.1}
#' Raw data deposited in figshare \url{https://doi.org/10.6084/m9.figshare.c.3301274.v1}
"lilpantheria"

#' Simulated energy expenditure and travel data
#'
#' This data table presents energy expenditure and average daily
#' path length for males, females, and pregnant females of a
#' hypothetical primate species.
#'
#' @format A data frame (tibble) with 90 rows and 3 variables:
#' \describe{
#'   \item{expend}{number: energy expenditure in kilocalories}
#'   \item{travel}{number: average daily path in meters}
#'   \item{group}{factor: female, pregnant female, or male}
#' }
#' @source Data simulated by Ryan Raaum.
"energy"
