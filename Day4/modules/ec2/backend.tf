terraform {
  backend "s3" {
    bucket         = "ankitha-tf-backend-prod" # change this
    key            = "anku/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
   #dynamodb_table = "terraform-lock"
  }
}
