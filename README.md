---
title: "Redactum: Simplifying the writing of engaging manuscripts in Spanish."
date: "`r format(Sys.time(), '%d %B %Y')`"
output: rmarkdown::github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

Redactum <a href="https://github.com/Macrurido/Redactum/"><img src="man/figures/logo.png" align="right" height="139" alt="Redactum website" /></a>

<!-- README.md is generated from README.Rmd. Please edit that file -->

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

Redactum © 2025 by Hugo Aguirre Villaseñor is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

## Redactum

This package provides tools to simplify writing compelling manuscripts in Spanish, enhancing efficiency and effectiveness.

# fn_enlista

It is a function that inserts commas between the elements of a vector, using 'and' for the last element unless the last word begins with 'i' or 'I', in which case it uses 'e'.

The function requires defining:

    * x A vector that contains multiple elements.

It returns A vector that inserts a comma after each element, adds
*y* to the last element, and if the last element is a word
starting with *i*, it instead adds *e*.

 ## Examples

The last word does not begin with "I".
```{r }
x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker", "Hugo")
xx <- fn_enlista(x)
```

Combine it with paste0().
```{r }
paste0("Los amigos de Armando son ", xx,".")
```

The last word begins  with "I".



```{r }
x <- c("Pedro", "Juan", "Mario", "Emilio", "Iker")
xx <- fn_enlista(x)
xx
```

Combine it with paste0().
```{r }
paste0("Los amigos de Armando son ", xx,".")
```

The last word begins  with "i".
```{r }
x <- c("península", "cordillera", "isla")
xx <- fn_enlista(x)
xx
```

Combine it with paste0().
```{r }
paste0("Los accidentes geográficos encontrados son: ", xx,".")
xx
```
