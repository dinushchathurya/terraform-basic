module "aws_vpc" {
    source   = "./modules/aws-vpc"
    for_each = var.vpc_config
    vpc_cidr = each.value.vpc_cidr
    tags     = each.value.tags
}

module "aws_subnet" {
    source      = "./modules/aws-subnet"
    for_each    = var.subnet_config
    vpc_id      = module.aws_vpc.vpc_id // This is the output from the aws_vpc module output.tf
    subnet_cidr = each.value.subnet_cidr
    subnet_az   = each.value.subnet_az
    tags        = each.value.tags
}

module "aws_sg" {
    source   = "./modules/aws-sg"
    for_each = var.sg_config
    sg_name  = each.value.sg_name
    vpc_id   = module.aws_vpc.vpc_id // This is the output from the aws_vpc module output.tf
    tags     = each.value.tags
}

module "aws_nic" {
    source      = "./modules/aws-nic"
    for_each    = var.network_interface_config
    subnet_id   = module.aws_subnet.subnet_id // This is the output from the aws_subnet module output.tf
    tags        = each.value.tags
    private_ips = each.value.private_ips
}

module "aws_instance" {
    source        = "./modules/aws-instance"
    depends_on    = [ module.aws_nic]
    for_each      = var.instance_config
    instance_type = each.value.instance_type
    instance_ami  = each.value.instance_ami
    nic_id        = module.aws_nic[each.key].nic_id // This is the output from the aws_nic module output.tf
    tags          = each.value.tags
}