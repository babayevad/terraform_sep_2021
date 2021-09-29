variable "vpc_cidr_block" {
    type = string 
    default = "10.0.0.0/16"
    description= "This is a CIDR range for the VPC"
}

variable "env" {
    type = string 
    default = "dev"
    description = "this is environment specification"
}

variable "app" {
    type = string
    default = "web"
    description = "this is application name"
}

variable "pub_sub_1" {
    type = string 
    default = "10.0.1.0/24"
    description= "This is CIDR range for subnet"
}

variable "pub_sub_2" {
    type = string 
    default = "10.0.2.0/24"
    description= "This is CIDR range for subnet"
}
variable "pub_sub_3" {
    type = string 
    default = "10.0.3.0/24"
    description= "This is CIDR range for subnet"
}
variable "pri_sub_1" {
    type = string 
    default = "10.0.11.0/24"
    description= "This is CIDR range for subnet"
}
variable "pri_sub_2" {
    type = string 
    default = "10.0.12.0/24"
    description= "This is CIDR range for subnet"
}
variable "pri_sub_3" {
    type = string 
    default = "10.0.13.0/24"
    description= "This is a CIDR range for the subnet"
}