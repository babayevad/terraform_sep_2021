data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_launch_configuration" "web" {
  name_prefix   = "${replace(local.name, "rtype", "lc")}-"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  key_name = aws_key_pair.terraform.key_name
  user_data = file("userdata.sh")
  security_groups = [aws_security_group.web_sg.id]
}

resource "aws_key_pair" "terraform" {
    key_name = replace(local.name, "rtype", "key")
    public_key = file("~/.ssh/id_rsa.pub")
    tags = merge(local.tags, { Name = replace(local.name, "rtype", "key")})
}

resource "aws_security_group" "web_sg" {
  name        = replace(local.name, "rtype", "ec2-sg")
  description = "Allow SSH inbound traffic"
  tags = merge(local.tags, { Name = replace(local.name, "rtype", "ec2-sg")})
}

resource "aws_security_group_rule" "allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] # we'll replace it with Load balancer SG ID
  security_group_id = aws_security_group.web_sg.id
}


resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0    #ALL PORTS
  to_port           = 0    #ALl PORTS
  protocol          = "-1" # -1 means TCP UDP ICMP 
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.web_sg.id
}