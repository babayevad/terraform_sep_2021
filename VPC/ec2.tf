resource "aws_instance" "Bastion" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  subnet_id              = aws_subnet.public_subnet_2.id
  associate_public_ip_address = true
  
  tags = {
    Name = "Bastion"
  }  
} 
