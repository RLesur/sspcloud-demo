# Import des données ------------------------------------------------------
# le fichier de données est public 
aws.s3::save_object("s3://f7sggu/sspcloud-demo/data/datasaurus.csv", 
                    file = "data/datasaurus.csv", 
                    region = "")


# Graphique ---------------------------------------------------------------
library(ggplot2)
library(magrittr)

gg <- readr::read_csv("data/datasaurus.csv") %>% 
  ggplot(aes(x, y, color = dataset)) +
  geom_point(show.legend = FALSE) +
  facet_wrap(~dataset)

print(gg)

# Création du fichier png -------------------------------------------------
file <- "out/datasaurus.png"
ggsave(file)

# Export S3 ---------------------------------------------------------------
source("_upload.R")
