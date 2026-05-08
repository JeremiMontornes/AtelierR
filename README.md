# AtelierR

Formation d'introduction a R pour des utilisateurs de Stata, orientee vers les projets d'etude et de recherche economique.

## Contenu du depot

- `atelierR.Rmd` : slides en francais.
- `atelierR.pdf` : version PDF des slides en francais.
- `atelierR_en.Rmd` : slides en anglais.
- `atelierR_en.pdf` : version PDF des slides en anglais.
- `data/sample_economy.csv` : jeu de donnees autonome utilise pendant l'atelier.
- `exercises/` : exercices a faire pendant la formation.
- `solutions/` : corriges executables.

## Pre-requis R

Les slides et exercices utilisent principalement :

```r
install.packages(c(
  "rmarkdown", "knitr", "dplyr", "ggplot2", "fixest",
  "data.table", "lubridate", "stringr", "readxl", "openxlsx", "broom"
))
```

## Compiler les slides

Depuis la racine du depot :

```r
rmarkdown::render("atelierR.Rmd", output_format = "ioslides_presentation")
rmarkdown::render("atelierR_en.Rmd", output_format = "ioslides_presentation")
```

Pour verifier les exercices :

```r
source("solutions/01_basics_solution.R")
source("solutions/02_data_workflow_solution.R")
```
