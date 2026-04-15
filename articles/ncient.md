# ncient {Redactum}

``` r
library(Redactum)
```

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

The function requires defining:

    name A character string containing the scientific name.

It returns a character string containing the abbreviated scientific
name.

## Examples

Abbreviation used for scientific names.

``` r
ncient("Homo sapiens")
#> [1] "H. sapiens"

name <- "Hydrolagus melanophasma"
ncient(name)
#> [1] "H. melanophasma"
```

Unspecified species within a genus, using the abbreviation “sp.” or “sp”
with or without a period.

``` r
# With a period
ncient("Hydrolagus sp.")
#> [1] "Hydrolagus sp."

# Without a period
ncient("Hydrolagus sp")
#> [1] "Hydrolagus sp"
```

Unspecified species within a genus, using the abbreviation “spp.” or
“spp” with or without a period.

``` r
# With a period
ncient("Hydrolagus spp.")
#> [1] "Hydrolagus spp."

# Without a period
ncient("Hydrolagus spp")
#> [1] "Hydrolagus spp"
```
