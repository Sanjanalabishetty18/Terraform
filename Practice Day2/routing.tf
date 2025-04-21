resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.Practice_VPC.id
  tags = {
    Name = "Main-IGW"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.Practice_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.public.id
}