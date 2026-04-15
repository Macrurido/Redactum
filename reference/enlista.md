# enlista

This function is included in the Redactum package.

## Usage

``` r
enlista(x)
```

## Arguments

- x:

  A vector that contains multiple elements.

## Value

A vector that inserts a comma after each element, adds 'y' to the last
element, and if the last element is a word starting with 'i', it instead
adds 'e'.

## Examples

``` r
 if (FALSE) { # \dontrun{
 # The last word does not begin with "I".
 x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker", "Hugo")
 xx <- enlista(x)

 # Combine it with paste0().
 paste0("Los amigos de Armando son ", xx,".")

 # The last word begins  with "I".
 x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker")
 xx <- enlista(x)

 # The last word begins  with "i".
 x <- c("península", "cordillera", "isla")
 xx <- enlista(x)

 # The last word starts with a character that is not a letter.
 x <- c("península", "cordillera", "123")
 xx <- enlista(x)

 # The vector consists of numeric values.
   x <- c(345, 678, 123, 0)
   xx <- enlista(x)
 } # }
```
