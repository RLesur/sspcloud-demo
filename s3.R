library(aws.s3)

bucketlist(region = "")
bucket <- "f7sggu/sspcloud-demo"

put_bucket(bucket, region = "")
get_bucket(bucket, region = "")

output <- rmarkdown::render("index.Rmd")

put_object(output, basename(output), bucket, region = "")

get_acl("sspcloud-demo", "f7sggu", region = "")
