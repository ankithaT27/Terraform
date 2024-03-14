provider "aws"{
region="us-east1-"
}





variable amiid{
description="provide ami"

}

variable instance_type{
description="provide instance_type"

}



resource "aws_instance" "my_ec2"{
ami = var.amiid
instance_type=var.instance_type

