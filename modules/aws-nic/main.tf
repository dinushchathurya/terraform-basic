resource "aws_network_interface" "demo-nic" {
    subnet_id = aws_subnet.demo-subnet.id
    private_ips = ["172.16.10.100"]

    tags = {
        Name = "demo-nic"
    }
}