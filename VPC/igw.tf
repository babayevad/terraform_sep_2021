resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.task_vpc.id

  tags = {
    Name = "main"
  }
}