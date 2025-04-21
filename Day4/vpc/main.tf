provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "firstvpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name= var.name
  } 
}