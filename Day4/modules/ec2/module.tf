module "ec2_instance"{
  source="/terraform/Day4/ec2"
  #you can pass the variable values here too
ami_value=""
instance_type="t2.micro"

}
