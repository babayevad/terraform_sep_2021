variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "This is a CIDR range for the VPC"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "this is environment specification"
}

variable "app" {
  type        = string
  default     = "web"
  description = "this is application name"
}

variable "pub_subnet" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "This is a list of pub subnets"
}

variable "pri_subnet" {
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  description = "This is a list of pri subnets"
}

variable "enable_nat_gateway" {
  default = true
  
}


