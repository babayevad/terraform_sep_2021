resource "aws_instance" "1" {
  count                  = var.number_of_ec2
  ami                    = var.ami                       # Reference to Input Variable
  instance_type          = var.instance_type   

  tags = {
      Name = replace(local.name, "rtype", "EC2-1")
      tags = local.common_tags
  }
}

resource "aws_instance" "2" {
  count                  = var.number_of_ec2
  ami                    = var.ami                       # Reference to Input Variable
  instance_type          = var.instance_type   

    tags = {
      Name = replace(local.name, "rtype", "EC2-2")
      tags = local.common_tags
  }
}

resource "aws_instance" "3" {
  count                  = var.number_of_ec2
  ami                    = var.ami                       # Reference to Input Variable
  instance_type          = var.instance_type   

  tags = {
      Name = replace(local.name, "rtype", "EC2-3")
      tags = local.common_tags
  }
}