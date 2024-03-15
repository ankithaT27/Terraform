provider "aws"{
region="us-east1-"
}




resource "aws_instance" "my_ec2"{
ami = var.amiid
instance_type=var.instance_type
tag={
name="ankitha"
}
}
