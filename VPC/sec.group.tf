resource "aws_security_group" "bastion_sg" {
  name        = "SSH"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.task_vpc.id
}

resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.bastion_sg.id
}

resource "aws_security_group_rule" "ingress_apache" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.bastion_sg.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0    
  to_port           = 0    
  protocol          = "-1" 
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.bastion_sg.id
}