provider "aws" {
  region = "us-east-1"
}

module "ec2-instace" {
  source        = "./ec2-instance"
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
}

module "vpc" {
  source   = "./vpc"
  vpc_cidr = "173.1.0.0/16"
  name     = "firstvpc"
}