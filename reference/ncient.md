# ncient

Abbreviated scientific name

## Usage

``` r
ncient(name)
```

## Arguments

- name:

  A character string containing the scientific name.

## Value

A character string containing the abbreviated scientific name.

## Details

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
abbreviations, such as "sp" or "sp."

## Examples

``` r
ncient("Homo sapiens")
#> [1] "H. sapiens"

name <- "Hydrolagus melanophasma"
ncient(name)
#> [1] "H. melanophasma"

## Example: Using the abbreviation "sp" without a period.
name <- "Hydrolagus sp"
ncient(name)
#> [1] "Hydrolagus sp"

## Example: Using the abbreviation "spp." with a period.
name <- "Hydrolagus spp."
ncient(name)
#> [1] "Hydrolagus spp."
```
