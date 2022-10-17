module "aws_vpc" {
    source = "./modules/aws-vpc"
}

module "aws_subnet" {
    source = "./modules/aws-subnet"
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