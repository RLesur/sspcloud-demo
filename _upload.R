#!/usr/bin/env Rscript

# Ceci est un exemple pour uploader tous les fichiers présents dans le répertoire out
if (!isTRUE(exists("bucket"))) {
  bucket <- "f7sggu"
}
files <- list.files("out", full.names = TRUE)

for(f in files) {
  cat("Uploading", f, "file...\n")
  aws.s3::put_object(f, file.path(basename(getwd()), basename(f)), bucket, region = "", show_progress = TRUE)
}
