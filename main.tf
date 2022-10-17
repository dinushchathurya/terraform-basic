module "aws_vpc" {
    source   = "./modules/aws-vpc"
    vpc_cidr = var.vpc_cidr
    tags     = var.tags
}

module "aws_subnet" {
    source      = "./modules/aws-subnet"
    vpc_id      = var.vpc_id
    subnet_cidr = var.subnet_cidr
    subnet_az   = var.subnet_az
    tags        = var.tags   
}

module "aws_sg" {
    source = "./modules/aws-sg"
}

module "aws_nic" {
    source = "./modules/aws-nic"
}

module "aws_instance" {
    source = "./modules/aws-instance"
}