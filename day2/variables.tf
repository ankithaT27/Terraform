terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region="us-east-1"
}

variable "my_ami" {
  type = string
  default="ami-0f403e3180720dd7e"
}

resource "aws_instance" "myec2" {
  ami=var.my_ami
  instance_type = "t2.micro"
}



output "public_ip"{
description="public ip is"
value=aws_instnace.myec2.public_ip
}
