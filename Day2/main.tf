resource "aws_vpc" "VPC1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name        = var.vpc_name
    Owner       = "VPC1"
    Environment = var.vpc_environment
  }
}