provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Day2"{
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t3.micro"
  tags = {
    Name = "Day2"
  }
}

resource "aws_s3_bucket" "s3bucket22042025" {
  bucket = "s3bucket22042025"
  tags = {
    Name = "bucket"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
name = "terraform_lock"
billing_mode = "PAY_PER_REQUEST"
hash_key = "LockID"

attribute {
  name = "LockID"
  type = "S"
}
}
  