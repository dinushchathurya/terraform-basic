variable "subnet_id" {
    description = "The subnet ID"
    type        = string
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    type        = map(any)
    default     = {
        Name = "demo-nic"
    }
}

variable "private_ips" {
    description = "A list of private IP addresses to assign to the ENI"
    type        = list(string)
    default     = ["172.16.10.100"]
}