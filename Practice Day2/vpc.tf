resource "aws_vpc" "Practice_VPC" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Practice_VPC"
  }
}
resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.Practice_VPC.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "subnet"
  }
}