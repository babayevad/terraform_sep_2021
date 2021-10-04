resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.main.id
  count         = 1
  subnet_id     = element(aws_subnet.pub.*.id, count.index)

  tags = {
    Name = "${var.env}-${var.app}-nat_gw"
  }
}
