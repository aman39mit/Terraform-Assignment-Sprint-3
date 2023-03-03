resource "aws_security_group" "aman-security-group-vpc" {
  name        = "aman-security-g"
  description = "security group"
  vpc_id      = aws_vpc.aman_vpc.id

  dynamic "ingress" {
    for_each = [443, 80]
    iterator = port
    content {
      description      = "TLS from VPC"
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "Name"    = "aman_security_group"
    "Owner"   = "aman.mittal@cloudeq.com"
    "Purpose" = "training"
  }
}