varibale "sg_name" {
    description = "Name of the security group"
    type        = string
    default     = {
        Name = "demo-sg"
    }
}

variable "vpc_id" {
    description = "The VPC ID"
    type        = string
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    type        = map(any)
    default     = {
        Name = "demo-sg"
    }
}