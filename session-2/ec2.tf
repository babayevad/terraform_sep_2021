
resource "aws_instance" "kris" {
  ami           = "ami-0c2d06d50ce30b442"    # key = value
  instance_type = "t2.micro"                 # key = value
}

# There are 2 types of blocks
# - resource block = creates and manages the resources on Cloud Environment
# - data source block = fetch the data from existing resource on Cloud Environment 

# Each block has 2 labels
# first label = what kind of resource (Hey I want to work with this resource), predefined by Terraform 
# second label = logical name or ID to your block, defined by Author and it has to be unique all across Blocks

# Argument = Key/Value pairs
# Key = predefined by Terraform
# Value = defined by Author

# What is Working Directory?
# 1. Where your Terraform configuration files are located
# 2. Where you run the Terraform commands

##################### TERRAFORM BASIC COMMANDS ####################

#### Terraform init = Initialize ####
# 1. You can run it once or 1000 times, it does not hurt
# 2. Installs the plugins, and initialize the backend

#### Terraform plan = Execution plan ####












# Terraform has a Plugin based Architecture 
# do not become a root user in the machine when you use CLI
