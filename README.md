# sspcloud-demo

An R demo project for [datalab.sspcloud.fr](https://datalab.sspcloud.fr).

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

- ouvrir le ficher `s3.Rmd` : il présente les commandes de base pour gérer ses fichiers cloud.

- générer le rapport
```r
rmarkdown::render("s3.Rmd")
```

- uploader le rapport
```r

```