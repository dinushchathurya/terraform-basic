module "aws_vpc" {
    source   = "./modules/aws-vpc"
    vpc_cidr = var.vpc_cidr
    tags     = var.tags
}

module "aws_subnet" {
    source      = "./modules/aws-subnet"
    vpc_id      = module.aws_vpc.vpc_id
    subnet_cidr = var.subnet_cidr
    subnet_az   = var.subnet_az
    tags        = var.tags   
}

module "aws_sg" {
    source  = "./modules/aws-sg"
    sg_name = var.sg_name
    vpc_id  = module.aws_vpc.vpc_id
    tags    = var.tags
}

module "aws_nic" {
    source      = "./modules/aws-nic"
    subnet_id   = var.subnet_id
    tags        = var.tags
    private_ips = var.private_ips
}

module "aws_instance" {
    source = "./modules/aws-instance"
    instance_type = var.instance_type
    instance_ami  = var.instance_ami
    nic_id        = var.nic_id
    tags          = var.tags
}