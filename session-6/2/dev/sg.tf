resource "aws_security_group" "my_sg" {
  name        = "SSH_sg"
  description = "Allow SSH inbound traffic"
}

resource "aws_security_group_rule" "ingress_ssh" {
  count             = 5
  type              = "ingress"
  from_port         = element(var.sg_ports, count.index)
  to_port           = element(var.sg_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ports_cidr, count.index)]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0    #ALL PORTS
  to_port           = 0    #ALl PORTS
  protocol          = "-1" # -1 means TCP UDP ICMP 
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.my_sg.id
}

# "" = when you hard code
# No "" = when you reference
# []  = list 

# List 
# Grocerry List 
# Fruit = [apple, banana, orange]