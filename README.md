# sspcloud-demo

An R demo project for [datalab.sspcloud.fr](https://datalab.sspcloud.fr).

## Environment setup

- create an RStudio service [![](https://img.shields.io/badge/SSPCloud-RStudio-%2376abdd)](https://datalab.sspcloud.fr/my-lab/catalogue/inseefrlab-datascience/rstudio/deploiement)

- in RStudio, clone and open this project
```r
git2r::clone("https://github.com/RLesur/sspcloud-demo.git", "sspcloud-demo")
rstudioapi::openProject("sspcloud-demo")
```

## Utilisation du système de stockage

### Cheatsheet

Télécharger un fichier

```r
aws.s3::save_object(object, bucket, region = "")
```

Uploader un fichier

```r
aws.s3::put_object(file, object, bucket, region = "")
```

### Exemple : uploader un rapport R Markdown

Le ficher `s3.Rmd` présente les commandes de base pour gérer ses fichiers cloud

- générer le rapport
```r
# renseigner le bucket
bucket <- "f7sggu"

rmarkdown::render("s3.Rmd", params = list(bucket = bucket))
```

- uploader le rapport
```r
source("_upload_HTML.R")
```

### Travailler avec des données stockées sur MinIO

Un exemple minimal est présent dans le fichier `datasaurus.R` :

- les données du _datasaurus_ sont publiquement disponibles à cettre adresse <https://minio.lab.sspcloud.fr/f7sggu/sspcloud-demo/data/datasaurus.csv>

- on construit un graphique ggplot qu'on sauvegarde en `png` et qu'on uploade sur MinIO

