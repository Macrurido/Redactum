#' fn_enlista
#'
# It is a function that inserts commas between the elements of a vector, using 'and' for the last element unless the last word begins with 'i' or 'I', in which case it uses 'e'.
#'
#' This function is included in the Redactum package.
#'
#' @param x A vector that contains multiple elements.
#'
#' @returns A vector that inserts a comma after each element, adds
#'  'y' to the last element, and if the last element is a word
#'  starting with 'i', it instead adds 'e'.
#'
#' @examples
#'  \dontrun{
#'  # The last word does not begin with "I".
#'  x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker", "Hugo")
#'  xx <- fn_enlista(x)
#'
#'  # Combine it with paste0().
#'  paste0("Los amigos de Armando son ", xx,".")
#'
#'  # The last word begins  with "I".
#'  x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker")
#'  xx <- fn_enlista(x)
#'
#'  # The last word begins  with "i".
#'  x <- c("península", "cordillera", "isla")
#'  xx <- fn_enlista(x)
#'  }
#'
#' @export
fn_enlista <- function(x){
                  if(startsWith(x[length(x)], "I") |
                     startsWith(x[length(x)], "i"))
                    {
                      idiom <- " e "
                    }else{
                      idiom <- " y "
                  } # End if

          vector <- paste(paste(x[-length(x)],
                                collapse = ", "),
                          x[length(x)],
                          sep = idiom)
}
