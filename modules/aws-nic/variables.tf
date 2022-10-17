variable "subnet_id" {
    description = "The subnet ID"
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    default     = {
        Name = "demo-nic"
    }
}

variable "private_ips" {
    description = "A list of private IP addresses to assign to the ENI"
    default     = ["172.16.10.100"]
}