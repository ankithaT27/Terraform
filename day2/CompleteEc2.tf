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

#resource "aws_key_pair" "mykeypair"{
#key_name="terraformkey"
#public_key= file("/home/ubuntu/. shh/terraformkey.pub")
#}

resource "aws_default_vpc" "default_vpc"{
}

resource "aws_security_group" "my_Securitygroup"{
name= "allow ssh"
description ="allow shh traffic from developers"

vpc_id = aws_default_vpc.default_vpc.id
ingress{
description="TLS from VPC"
protocol="TCP"
from_port=22
to_port=22

#allow traffic from ip
cidr_blocks = ["0.0.0.0/0"]

}

tags={
name="ssh"
}
}


variable "my_ami_id"{
type= string
default=" "
}


resource "aws_instance" "myec2"{
#key=aws_key_pair.mykeypair.key_name
ami=var.my_ami_id
instance_type="t2.micro"
security_groups=[aws_security_group.my_Securitygroup]

}



