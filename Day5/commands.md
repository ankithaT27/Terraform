**Create a workspace**
terraform workspace new stage
terraform workspace new dev
terraform workspace new prod
This comamnd creates 3 workspaces "dev,stage,prod"

**switch to a workspace**
terraform workspace select stage
terraform workspace select dev

**see which workspace we are in**
terraform workspace show

**create seperate tfvars files for each env, eg: prod.tfvars (this file will have instnace_type set to t2.large) This command will apply the variables file which has prod values**

terraform apply -var-file=prod.tfvars
terraform apply -var-file=stage.tfvars



