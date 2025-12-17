#' n_cient
#'
#' Abbreviated scientific name
#'
#' The abbreviated name is derived from the scientific name. To create the abbreviation, the first letter of the genus is taken, written in uppercase, and followed by a period. The second part of the scientific name is then added after a space.
#'
#' @param name A character string containing the scientific name.
#'
#' @returns A character string containing the abbreviated scientific name.
#'
#' @examples
#'
#' n_cient("Homo sapiens")
#'
#' name <- "Hydrolagus melanophasma"
#' n_cient(name)
#'
#' @export
n_cient <- function(name){
  name_split <- strsplit(name, split = " ")
  genus <- substr(name, 1, 1)
  species <- name_split[[1]][2]
  new_name <- paste(genus, ". ", species, sep = "")
  print(new_name)
}
