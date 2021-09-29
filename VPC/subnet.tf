resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = var.pub_1
  availability_zone = "us-east-1a"
  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = var.pub_2
  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = var.pub_3
  availability_zone = "us-east-1c"

  tags = {
    Name = "public_subnet_3"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = var.pri_1

  tags = {
    Name = "private_subnet_1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = var.pri_2

  tags = {
    Name = "private_subnet_2"
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id     = aws_vpc.task_vpc.id
  cidr_block = var.pri_3

  tags = {
    Name = "private_subnet_3"
  }
}

# resource "aws_subnet" "subnets_pub" {
#   count             = "${length(var.public_subnets)}"
#   vpc_id            = "${aws_vpc.task_vpc.id}"
#   cidr_block        = "${element(var.public_subnets, count.index)}"
# }