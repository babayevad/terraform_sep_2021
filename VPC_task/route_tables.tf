resource "aws_route_table" "custom" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-${var.app}-public-table-0"
  }
}

resource "aws_route_table" "custom_1" { 
  vpc_id = aws_vpc.main.id
  
  tags = {
    Name = "${var.env}-${var.app}-private-table-1"
  }
}


# ///// Public Subnet Associations/////

resource "aws_route_table_association" "custom" {
  count          = 3
  subnet_id      = element(aws_subnet.pub.*.id, count.index)
  route_table_id = aws_route_table.custom.id

}

# Associate Private Subnet with Private Route Table
resource "aws_route_table_association" "private_subnet_assoc" {
  count          = length(var.pri_subnet)
  route_table_id = aws_route_table.custom_1.id
  subnet_id      = element(aws_subnet.pri.*.id, count.index)
}

resource "aws_route" "igw" {
  route_table_id         = aws_route_table.custom.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

# resource "aws_route" "nat" {
#   count                  = 1
#   route_table_id         = aws_route_table.custom_1.id
#   destination_cidr_block = "0.0.0.0/0"
#   nat_gateway_id         = element(aws_nat_gateway.example.*.id, count.index)
# }