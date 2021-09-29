resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.pub_sub_1.id

  tags = {
    Name = "${var.env}-${var.app}-nat_gw"
  }
}