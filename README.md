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

##Multiple Providers

1. local files
2. aws instances
3. 




