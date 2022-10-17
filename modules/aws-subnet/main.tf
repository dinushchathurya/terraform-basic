resource "aws_subnet" "demo-subnet" {
    vpc_id            = var.vpc_id
    cidr_block        = var.subnet_cidr
    availability_zone = var.subnet_az

    tags              = var.tags
}

