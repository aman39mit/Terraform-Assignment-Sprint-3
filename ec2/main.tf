#creating instance
resource "aws_instance" "aman_ec2" {
    ami = var.ami_id
    instance_type = var.inst_type
    tags = var.common_tags

    security_groups = var.security_groups
    subnet_id = var.subnet_id
}