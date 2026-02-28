Redactum: Simplifying the writing of manuscripts in Spanish and other
languages.
================
Hugo Aguirre Villaseñor
27 febrero 2026

Redactum
<a href="https://github.com/Macrurido/Redactum/"><img src="main/images/Redactum.png" align="right" height="139" alt="Redactum website" /></a>

<!-- README.md is generated from README.Rmd. Please edit that file -->

Shield: [![CC BY
4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)

Redactum © 2025 by Hugo Aguirre Villaseñor is licensed under a [Creative
Commons Attribution 4.0 International
License](http://creativecommons.org/licenses/by/4.0/).

[![CC BY
4.0](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)

## Redactum

This package offers tools to streamline the writing of manuscripts in
Spanish and in other languages, making it a versatile choice for all
your writing requirements.

## Installation

You can install the development version of Redactum from
[GitHub](https://github.com/Macrurido/Redactum.git) using one of the
following options:

Using the **pak** package

``` r
# install.packages("pak")
pak::pak("Macrurido/Redactum")
```

or using the **devtools** package

``` r
library(devtools)
install_github("Macrurido/Redactum")
```

``` r
library(Redactum)
```

# fn_enlista

It is a function that inserts commas between the elements of a vector,
using ‘and’ for the last element unless the last word begins with ‘i’ or
‘I’, in which case it uses ‘e’. In the context of numerical vectors, the
letter ‘y’ is placed before the final word.

The function requires defining:

    * x A vector that contains multiple elements.

It returns A vector that inserts a comma after each element, adds *y* to
the last element, and if the last element is a word starting with *i*,
it instead adds *e*.

## Examples

The last word does not begin with “I”.

``` r
x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker", "Hugo")
xx <- Redactum::fn_enlista(x)
xx
```

    ## [1] "Pedro, Juan, Mario, Emilio, Iker y Hugo"

``` r
# Example: combine it with paste0().
xx <- paste0("Los amigos de Armando son ", xx,".")
xx
```

    ## [1] "Los amigos de Armando son Pedro, Juan, Mario, Emilio, Iker y Hugo."

The last word begins with “I”.

``` r
x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker")
xx <- Redactum::fn_enlista(x)
xx
```

    ## [1] "Pedro, Juan, Mario, Emilio e Iker"

``` r
# Example: combine it with paste0().
xx <- paste0("Los amigos de Armando son ", xx,".")
xx
```

    ## [1] "Los amigos de Armando son Pedro, Juan, Mario, Emilio e Iker."

The last word begins with “i”.

``` r
x <- c("península", "cordillera", "isla")
xx <- Redactum::fn_enlista(x)
xx
```

    ## [1] "península, cordillera e isla"

``` r
# Example: combine it with paste0().
xx <- paste0("Los accidentes geográficos encontrados son: ", xx,".")
xx
```

    ## [1] "Los accidentes geográficos encontrados son: península, cordillera e isla."

The last word starts with a character that is not a letter.

``` r
x <- c("península", "cordillera", "123")
xx <- Redactum::fn_enlista(x)
xx
```

    ## [1] "península, cordillera y 123"

``` r
# Example: combine it with paste0().
xx <- paste0("Los accidentes geográficos encontrados son: ", xx,".")
xx
```

    ## [1] "Los accidentes geográficos encontrados son: península, cordillera y 123."

The vector consists of numeric values.

``` r
x <- c(345, 678, 123, 0)
xx <- Redactum::fn_enlista(x)
xx
```

    ## [1] "345, 678, 123 y 0"

``` r
# Example: combine it with paste0().
xx <- paste0("Los accidentes geográficos estan numerados como: ", xx,".")
xx
```

    ## [1] "Los accidentes geográficos estan numerados como: 345, 678, 123 y 0."

# n_cient

Abbreviated scientific name

The abbreviated name is derived from the scientific name. To create the
abbreviation, the first letter of the genus is taken, written in
uppercase, and followed by a period. The specific name is added after a
space in the scientific name.

Within the function, a condition is established. If the scientific name
refers to a species that is not specified under a particular genus, such
as Hydrolagus sp., or to multiple species within a genus, like
Hydrolagus spp., the name will not be abbreviated. However, if the
scientific name designates a specific species, it will be modified; for
instance, Hydrolagus melanophasma will be abbreviated to H.
melanophasma.

The function operates correctly with or without periods in
abbreviations, such as “sp” or “sp.”

## Examples

Abbreviation used for scientific names.

``` r
n_cient("Homo sapiens")
```

    ## [1] "H. sapiens"

``` r
name <- "Hydrolagus melanophasma"
n_cient(name)
```

    ## [1] "H. melanophasma"

Unspecified species within a genus, using the abbreviation “sp.” or “sp”
with or without a period.

``` r
# With a period
n_cient("Hydrolagus sp.")
```

    ## [1] "Hydrolagus sp."

``` r
# Without a period
n_cient("Hydrolagus sp")
```

    ## [1] "Hydrolagus sp"

Unspecified species within a genus, using the abbreviation “spp.” or
“spp” with or without a period.

``` r
# With a period
n_cient("Hydrolagus spp.")
```

    ## [1] "Hydrolagus spp."

``` r
# Without a period
n_cient("Hydrolagus spp")
```

    ## [1] "Hydrolagus spp"
