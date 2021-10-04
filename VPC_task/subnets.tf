resource "aws_subnet" "pub" {
  vpc_id     = aws_vpc.main.id
  count      = length(var.pub_subnet)
  cidr_block = element(var.pub_subnet, count.index)

  tags = {
    Name = "${var.env}-${var.app}-subnet-pub"
  }
}

resource "aws_subnet" "pri" {
  vpc_id     = aws_vpc.main.id
  count      = length(var.pri_subnet)
  cidr_block = element(var.pri_subnet, count.index)

  tags = {
    Name = "${var.env}-${var.app}-subnet-pri"
  }
}

