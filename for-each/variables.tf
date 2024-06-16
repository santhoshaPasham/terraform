variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terraform = "true"
    }
}


variable "zoneid" {
    default = "Z0159192O3E0AXOYYIF9"
}

variable "domain_name" {
    default = "daws9.online"
}