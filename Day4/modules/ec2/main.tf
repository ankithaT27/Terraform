resource "aws_instance" "myec2"{
instance_type=var.instancetype
ami= var.amivalue
}
