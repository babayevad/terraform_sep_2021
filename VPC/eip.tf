resource "aws_eip" "elastic_ip" {
  depends_on = [aws_internet_gateway.igw] 
}