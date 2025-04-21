provider "aws" {
  region = "us-east-1"
  alias  = "North_virginia"
}
resource "aws_instance" "Day1_terraform" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  tags = {
    Name = "Day1_terraform"
    Team = "Devops"
  }

}