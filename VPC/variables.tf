variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-087c17d1fe0178315"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "This is an instance type for EC2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "pub_1" {
  default = "10.0.1.0/24"
  description = "This is public subnet 1"
}

variable "pub_2" {
  default = "10.0.2.0/24"
  description = "This is public subnet 2"
}

variable "pub_3" {
  default = "10.0.3.0/24"
  description = "This is public subnet 3"
}

variable "pri_1" {
  default = "10.0.11.0/24"
  description = "This is private subnet 1"
}

variable "pri_2" {
  default = "10.0.12.0/24"
  description = "This is private subnet 2"
}

variable "pri_3" {
  default = "10.0.13.0/24"
  description = "This is private subnet 3"
}

variable "public_subnets" {
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "this is a list of public subnets"
}

# variable "private_subnets" {
#   type = list (string)
#   default = ["private_subnet_1", "private_subnet_2", "private_subnet_3"]
#   description = "this is a list of private subnets"
# }