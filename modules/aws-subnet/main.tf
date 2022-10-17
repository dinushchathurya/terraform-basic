resource "aws_subnet" "demo-subnet" {
    vpc_id = aws_vpc.demo.id
    cidr_block = "172.16.10.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "demo-subnet"
    }
  
}