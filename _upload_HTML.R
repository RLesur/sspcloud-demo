#!/usr/bin/env Rscript

# Ceci est un exemple pour uploader tous les fichiers HTML présents dans le répertoire courant
if (!isTRUE(exists("bucket"))) {
  bucket <- "f7sggu"
}
files <- list.files(pattern = "\\.htm[l]$")

for(f in files) {
  cat("Uploading", f, "file...\n")
  aws.s3::put_object(f, file.path(basename(getwd()), f), bucket, region = "", show_progress = TRUE)
}
