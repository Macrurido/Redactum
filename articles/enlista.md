# enlista {Redactum}

``` r
library(Redactum)
```

It is a function that inserts commas between the elements of a vector,
using ‘and’ for the last element unless the last word begins with ‘i’ or
‘I’, in which case it uses ‘e’. In the context of numerical vectors, the
letter ‘y’ is placed before the final word.

The function requires defining:

    x A vector that contains multiple elements.

It returns a vector that inserts a comma after each element, adds *y* to
the last element, and if the last element is a word starting with *i*,
it instead adds *e*.

## Examples

The last word does not begin with “I”.

``` r
x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker", "Hugo")
xx <- Redactum::enlista(x)
xx
#> [1] "Pedro, Juan, Mario, Emilio, Iker y Hugo"

# Example: combine it with paste0().
xx <- paste0("Los amigos de Armando son ", xx,".")
xx
#> [1] "Los amigos de Armando son Pedro, Juan, Mario, Emilio, Iker y Hugo."
```

The last word begins with “I”.

``` r
x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker")
xx <- Redactum::enlista(x)
xx
#> [1] "Pedro, Juan, Mario, Emilio e Iker"

# Example: combine it with paste0().
xx <- paste0("Los amigos de Armando son ", xx,".")
xx
#> [1] "Los amigos de Armando son Pedro, Juan, Mario, Emilio e Iker."
```

The last word begins with “i”.

``` r
x <- c("península", "cordillera", "isla")
xx <- Redactum::enlista(x)
xx
#> [1] "península, cordillera e isla"

# Example: combine it with paste0().
xx <- paste0("Los accidentes geográficos encontrados son: ", xx,".")
xx
#> [1] "Los accidentes geográficos encontrados son: península, cordillera e isla."
```

The last word starts with a character that is not a letter.

``` r
x <- c("península", "cordillera", "123")
xx <- Redactum::enlista(x)
xx
#> [1] "península, cordillera y 123"

# Example: combine it with paste0().
xx <- paste0("Los accidentes geográficos encontrados son: ", xx,".")
xx
#> [1] "Los accidentes geográficos encontrados son: península, cordillera y 123."
```

The vector consists of numeric values.

``` r
x <- c(345, 678, 123, 0)
xx <- Redactum::enlista(x)
xx
#> [1] "345, 678, 123 y 0"

# Example: combine it with paste0().
xx <- paste0("Los accidentes geográficos estan numerados como: ", xx,".")
xx
#> [1] "Los accidentes geográficos estan numerados como: 345, 678, 123 y 0."
```
