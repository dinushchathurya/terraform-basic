variable "instance_type" {
    description = "The type of instance to start"
    type        = string
    default     = "t2.micro"
}

variable "instance_ami" {
    description = "The AMI to use for the instance"
    type        = string
    default     = "ami-0c55b159cbfafe1f0"
}

variable "nic_id" {
    description = "The network interface ID"
    type        = string
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    type        = map(any)
    default     = {
        Name = "demo-instance"
    }
}