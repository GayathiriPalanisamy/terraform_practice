## Welcome

This repo is about understanding the basics of terraform.

### HCL 
Terrafrom uses Haschicorp Configuration Languauge(HCL) to configure and provision the resources.

local.tf file holds the code to create a file with the given content

`resource "local_file" "pet"{
	filename = "pets.txt"
	content = "We love pets"
	file_permission ="0700"	
}`

1. `terraform init`  installs and downloads the plugins froms the cloud / partner providers.
2. `terraform plan`  to review any changes that are required for your infrastructure.
3. `terraform apply` executes the action proposed in the plan

### Providers

1. local files
2. aws instances
3. 


## Variables 

Terrafrom uses variable declaration for re-useablitiy and keeping the code lightly coupled. `variables.tf` holds the default varaiables that can be used in the project. 

Variables can be passed in multiple format and below is also in the order where terraform takes which as in first priority.
1. CLI (first-priority):
	`terraform apply -var "filename=/root/pets.txt" -var "content=We love pets!"`

2. *.auto.tfvars(second priority):
	variables definition files using `terraform apply -var-file variables.auto.tfvars`

3. terraform.tfvars(third priority):
	variables definition files using`terraform.tfvars`

4. Environment variables(last priority):
	`export TF_VAR_filename="root/pets.txt"`


## Resource attributes
	Link two resources using resource attributes, so that output of one resource can be used as output for another resource.

	https://registry.terraform.io/providers/hashicorp/tls/latest/docs 

## Resource dependencies

Refer the examples in the folders of 
Explicit dependency `depends_on` , Implicit dependency `reference_expressions`

## Output Variable

`output.tf` file holds the output variables which can be staored and re-used later for other resource.

You can see the values of the output using `terraform show` command.

