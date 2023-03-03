resource "aws_vpc" "aman_vpc" {
  cidr_block = var.cidr_b

  tags = {
    Name = "Aman"
    Owner ="aman.mittal@cloudeq.com"
    Purpose = "Training"
  }
}

resource "aws_subnet" "aman-subnet" {
  vpc_id            = aws_vpc.aman_vpc.id
  cidr_block        = var.subnet_cidrs
  availability_zone = var.azs

  tags = {
    Name    = "aman_public_subnet"
    Owner   = "aman.mittal@cloudeq.com"
    Purpose = "training"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.aman_vpc.id

  tags = {
    "Name"    = "aman_ig_vpc"
    "Owner"   = "aman.mittal@cloudeq.com"
    "Purpose" = "training"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.aman_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "aman route table"
  }
}

resource "aws_route_table_association" "subnet_asso" {
  subnet_id      = aws_subnet.aman-subnet.id
  route_table_id = aws_route_table.rt.id
}