output "security-group-vpc" {
    value = module.vpc.security-group-vpc
}

output "subnet" {
    value = module.vpc.subnet
}