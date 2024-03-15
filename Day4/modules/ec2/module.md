we can use modules to refer terraform files which are there in other repos/folder

we create a file:
module "awsmodule" {
  source = "/workspaces/Terraform/Day4/modules/ec2"
  amivalue="ami-0f403e3180720dd7e"
  instance_type="t2.micro"
}

here give the source where your terraform code is there, you can also pass the values in the RUN Time.
