provider "aws"{
region="us-east-1"
}


resources "aws_s3_bucket" "terraform_origin_bucket"{
   bucket="ankitha1233"
}
