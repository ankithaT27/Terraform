terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
}
}

provider "aws"{
region = 'us-east-1"
}

resource "aws_key_pair" "mykeypair"{
key_name="terraformkey"
public_key= file("/home/ubuntu/. shh/terraformkey.pub")
}

resource "aws_default_vpc" "default_vpc"{
}






resource "aws_instance" "myec2"{
key=aws_key_pair.mykeypair.key_name

}



