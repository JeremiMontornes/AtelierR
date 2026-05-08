# AtelierR

Formation d'introduction a R pour des utilisateurs de Stata, orientee vers les projets d'etude et de recherche economique.

## Objectifs pedagogiques

A la fin de l'atelier, les participants doivent savoir :

- se reperer dans RStudio et comprendre le cycle script -> console -> objets -> sorties ;
- installer et charger des packages ;
- importer, transformer, agreger et fusionner des donnees ;
- traduire les reflexes Stata usuels en idiomes R ;
- produire un graphique et une table de regression reproductibles ;
- manipuler des dates et des chaines de caracteres ;
- organiser un petit projet d'analyse.

## Contenu du depot

- `atelierR.Rmd` : slides en francais.
- `atelierR_en.Rmd` : slides en anglais.
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

## Deroule conseille

1. 15 min : installation, interface, aide.
2. 30 min : syntaxe, objets, packages.
3. 45 min : importer, filtrer, selectionner, creer des variables.
4. 30 min : agregation, jointures, graphiques.
5. 30 min : regressions et sorties.
6. 30 min : exercice recapitulatif.

## Notes de maintenance

Le support est volontairement autonome : aucun chemin absolu, aucun fichier reseau, aucun appel web obligatoire. Les appels a des bases externes comme DB.NOMICS sont presentes comme exemples non executes afin que le rendu reste reproductible.
