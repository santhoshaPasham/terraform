variable "image_id" {
    type = string 
    default = "ami-031d574cddc5bb371"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type = string 
}

variable "tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB1"
    }
}

variable "instance_name" {
    default = "db"
}