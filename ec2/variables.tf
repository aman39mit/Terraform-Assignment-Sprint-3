variable "common_tags" {
    type = map(any)
}

variable "ami_id" {
    type = string
}

variable "inst_type" {
    type = string
}

variable "security_groups" {
    type = list
}

variable "subnet_id" {
    type = string
}

