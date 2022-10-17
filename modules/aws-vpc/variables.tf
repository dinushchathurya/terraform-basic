variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type = string
    default = "172.16.0.0/16"
}

variable "tags" {
    description = "A map of tags to add to all resources"
    type = map(any)
    default = {
        Name = "demo-vpc"
    }
}