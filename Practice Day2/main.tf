resource "aws_instance" "Practice1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "Practice1"
  }
}
