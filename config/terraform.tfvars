vpc_config = {

    vpc-one = {
        vpc_cidr = "192.168.0.0/16"
        tags     = {
            Name = "demo-vpc"
        }
    }

}

subnet_config = {

    subnet-one = {
        vpc_name = "vpc-one"
        subnet_cidr = "192.168.0.0/18"
        subnet_az   = "us-east-1a"
        tags = {
            Name = "subnet-one"
        }
    }
}

network_interface_config = {

    nic_one = {
        subnet_name = "subnet-one"
        private_ips = ["172.16.10.100"]
        tags        = {
            Name = "demo-nic-one"
        }
    }

    nic_two = {
        subnet_name = "subnet-one"
        private_ips = ["172.16.10.110"]
        tags        = {
            Name = "demo-nic-two"
        }
    }
}

security_group_config = {

    security_one = { 
        vpc_name = "vpc-one"
        name  = "security-one"
        tags  = {
            Name = "security-one"
        }
    }
        
}

instance_config = {

    instance-one = {
        nic_name      = "nic_one"
        ami_id        = "ami-0c2b8ca1dad447f8a"
        instance_type = "t2.micro"
        tags = {
            Name = "demo-instance-one"
        }
    }

    instance-two = {
        nic_name      = "nic_two"
        ami_id = "ami-0c2b8ca1dad447f8a"
        instance_type = "t2.micro"
        tags = {
            Name = "demo-instance-two"
        }
    }

}