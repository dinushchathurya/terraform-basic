module "aws_vpc" {
    source   = "./modules/aws-vpc"
    for_each = var.vpc_config
    vpc_cidr = each.value.vpc_cidr
    tags     = each.value.tags
}

module "aws_subnet" {
    source      = "./modules/aws-subnet"
    for_each    = var.subnet_config
    vpc_id      = module.aws_vpc[each.value.vpc_name].vpc_id 
    subnet_cidr = each.value.subnet_cidr
    subnet_az   = each.value.subnet_az
    tags        = each.value.tags
}

module "aws_sg" {
    source         = "./modules/aws-sg"
    for_each       = var.security_group_config
    security_name  = each.value.name
    vpc_id         = module.aws_vpc[each.value.vpc_name].vpc_id 
    tags           = each.value.tags
}

module "aws_nic" {
    source      = "./modules/aws-nic"
    for_each    = var.network_interface_config
    subnet_id   = module.aws_subnet[each.value.subnet_name].subnet_id 
    tags        = each.value.tags
    private_ips = each.value.private_ips
}

module "aws_instance" {
    source        = "./modules/aws-instance"
    depends_on    = [ module.aws_nic]
    for_each      = var.instance_config
    instance_type = each.value.instance_type
    instance_ami  = each.value.ami_id
    nic_id        = module.aws_nic[each.value.nic_name].nic_id
    tags          = each.value.tags
}