variable "ami_id" {
    type = string
    #default = "ami-0e742cca61fb65051"
}

variable "common_tags" {
    type = map(any)
    default = {
        Name = "Aman Mittal"
        Owner = "aman.mittal@cloudeq.com"
        Purpose = "training"
    }
}

variable "inst_type" {
    type = string
    #default = "t2.micro"
}


variable cidr_b {
    type  = string
}

variable subnet_cidrs {
    type  = string
}

variable azs {
    type  = string
}

variable bucket {
    type = string
}