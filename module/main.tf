module "ec2_module" {
  source = ".//ec2"
  ami_id = var.ami_id
  inst_type = var.inst_type
  common_tags = var.common_tags

  security_groups = module.vpc.security-group-vpc
  subnet_id = module.vpc.subnet
}

module "s3_module" {
    source = ".//s3"
    bucket = var.bucket
    common_tags = var.common_tags
}

module "vpc" {
  source  = ".//vpc"
  cidr_b             = var.cidr_b
  azs                  = var.azs
  subnet_cidrs = var.subnet_cidrs
}