terraform{
backend "s3"{
  bucket="ankitha-tf-backend-prod"
  region="us-east-1"
  key="ankitha/terraform.tfstate"
  }
  }
