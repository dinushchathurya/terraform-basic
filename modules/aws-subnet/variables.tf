variable "vpc_id" {
    description = "The VPC ID"
    type = string
}

variable "subnet_cidr" {
    description = "The CIDR block for the subnet"
    type = string
    default = "172.16.10.0/24"
}

variable "subnet_az" {
    description = "The availability zone for the subnet"
    type = string
    default = "us-east-1a"
}

variable "tags" {
    description = "A map of tags to add to all resources"
    type = map(any)
    default = {
        Name = "demo-subnet"
    }
}