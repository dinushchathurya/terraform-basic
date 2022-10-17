variable "vpc_config" {
    type = map(any)
}

variable "subnet_config" {
    type = map(any)
}

variable "network_interface_config" {
    type = map(any)
}

variable "security_group_config" {
    type = map(any)
}

variable "instance_config" {
    type = map(any)
}
