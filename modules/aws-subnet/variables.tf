variable "vpc_id" {
    description = "The VPC ID"
}

variable "subnet_cidr" {
    description = "The CIDR block for the subnet"
    default     = "172.16.10.0/24"
}

variable "subnet_az" {
    description = "The availability zone for the subnet"
    default     = "us-east-1a"
}

variable "tags" {
    description = "A map of tags to add to all resources"
    default = {
        Name = "demo-subnet"
    }
}