provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "Day4" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name="Day4"
  } 
}