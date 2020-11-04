# Import des données ------------------------------------------------------
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

gg

# Création du fichier png et export S3 ------------------------------------
file <- "datasaurus.png"
ggsave(file)

aws.s3::put_object(file, file.path(basename(getwd()), file), "f7sggu", region = "")
