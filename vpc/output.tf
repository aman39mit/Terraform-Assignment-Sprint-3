output "security-group-vpc" {
    value = [ "${aws_security_group.aman-security-group-vpc.id}" ]
}

output "subnet" {
    value = aws_subnet.aman-subnet.id
}