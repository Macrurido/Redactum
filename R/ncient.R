#' ncient
#'
#' Abbreviated scientific name
#'
#' The abbreviated name is derived from the scientific name. To create the abbreviation, the first letter of the genus is taken, written in uppercase, and followed by a period. The specific name is added after a space in the scientific name.
#'
#' Within the function, a condition is established. If the scientific name refers to a species that is not specified under a particular genus, such as Hydrolagus sp., or to multiple species within a genus, like Hydrolagus spp., the name will not be abbreviated. However, if the scientific name designates a specific species, it will be modified; for instance, Hydrolagus melanophasma will be abbreviated to H. melanophasma.
#'
#' The function operates correctly with or without periods in abbreviations, such as "sp" or "sp."
#'
#' @param name A character string containing the scientific name.
#'
#' @returns A character string containing the abbreviated scientific name.
#'
#' @examples
#'
#' ncient("Homo sapiens")
#'
#' name <- "Hydrolagus melanophasma"
#' ncient(name)
#'
#' ## Example: Using the abbreviation "sp" without a period.
#' name <- "Hydrolagus sp"
#' ncient(name)
#'
#' ## Example: Using the abbreviation "spp." with a period.
#' name <- "Hydrolagus spp."
#' ncient(name)
#'
#' @export
ncient <- function(name){
  name_split <- strsplit(name, split = " ")
  genus <- substr(name, 1, 1)
  species <- name_split[[1]][2]
  new_name <- ifelse(species == "sp." | species == "spp." |
                       species == "sp" | species == "spp",
                     name,
                     paste(genus, ". ", species, sep = ""))
  print(new_name)
}
