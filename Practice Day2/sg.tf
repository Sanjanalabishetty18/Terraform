resource "aws_security_group" "allow_all" {
  name        = "allow_all_traffic"
  description = "Allow ALL inbound/outbound traffic"
  vpc_id      = aws_vpc.Practice_VPC.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow-All-Traffic"
  }
}