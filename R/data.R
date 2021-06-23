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
