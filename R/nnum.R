#' nnum
#'
#' Returns the name of a specified number.
#'
#' This function returns the name of a given number, specifically for numbers ranging from 0 to 10.
#' It uses an array that defines the names of the numbers from one to ten, including zero at the end.
#' The user specifies the names of the numbers in the chosen language.
#'
#' @param x an integer number.
#' @param nnames a character vector that contains the names of numbers.
#'
#' @returns
#' It returns the name of a number in the language specified by the user.
#'
#' @examples
#' \dontrun{
#' ## Number in English.
#' nnames <- c("one", "two", "three",
#'  "four", "five", "six",
#'   "seven", "eight", "nine",
#'    "ten", "zero")
#'
#' x <- 2
#' nnum(x,nnames)
#'
#' ## Number in Spanish.
#' nnames <- c("uno", "dos", "tres",
#'  "cuatro", "cinco", "seis",
#'  "siete", "ocho", "nueve",
#'   "diez","cero")
#'
#' x <- 2
#' nnum(x,nnames)
#'   }
#'
#' @export
nnum <- function(x,nnames){
  if(x==0){
    nnames[length(nnames)]
  }else{
    nnames[x]
  }
}
