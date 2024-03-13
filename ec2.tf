terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}


resource "aws_instance" "MyEc2"{
ami = "ami-0f403e3180720dd7e"
instance type="t2.micro"
}


