variable "base_domain" {
    type = string 
    default = "windyvibes.net"
}

variable "env" {
    type = string
    default = "dev"
}

variable "region" {
    type = string 
    default = "us-east-1"
}

variable "vpc_id" {
    type = string 
    default = "vpc-18e38865"
}

variable "subnets" {
    type = list(string)
    default = ["subnet-182c7747", "subnet-42c32d0e"]
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "asg_max" {
    type = number
    default = 5
}

variable "asg_desired" {
    type = number
    default = 3
}