resoure "aws_vpc" "demo" {
    cidr_block = "172.16.0.0/16"
    
    tags = {
        Name = "demo"
    }
}