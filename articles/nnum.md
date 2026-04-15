# nnum {Redactum}

``` r
library(Redactum)
```

Returns the name of a specified number.

This function returns the name of a given number, specifically for
numbers ranging from 0 to 10.

It uses an array that defines the names of the numbers from one to ten,
including zero at the end. The user specifies the names of the numbers
in the chosen language.

The function requires defining:

    x An integer number.
    nnames A character vector that contains the names of numbers

It returns the name of a number in the language specified by the user.

## Examples

Return the name associated with number 2 in English.

``` r
nnames <- c("one", "two", "three",
            "four", "five", "six",
            "seven", "eight", "nine",
            "ten", "zero")
 x <- 2

nnum(x,nnames)
#> [1] "two"
```

Return the name associated with number 0 in English.

``` r
nnames <- c("one", "two", "three",
            "four", "five", "six",
            "seven", "eight", "nine",
            "ten", "zero")
 x <- 0

nnum(x,nnames)
#> [1] "zero"
```

Return the name associated with number 2 in Spanish.

``` r
nnames <- c("uno", "dos", "tres",
            "cuatro", "cinco", "seis",
            "siete", "ocho", "nueve",
            "diez","cero")
 x <- 2

nnum(x,nnames)
#> [1] "dos"
```

Return the name associated with number 0 in Spanish.

``` r
nnames <- c("uno", "dos", "tres",
            "cuatro", "cinco", "seis",
            "siete", "ocho", "nueve",
            "diez","cero")
 x <- 0

nnum(x,nnames)
#> [1] "cero"
```
