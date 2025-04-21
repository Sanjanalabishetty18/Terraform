terraform {
  backend "s3"{
    bucket = "s3bucket22042025"
    key = "sanjana/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}