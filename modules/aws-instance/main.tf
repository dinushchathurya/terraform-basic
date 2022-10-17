resource "aws_instance" "demo-instance" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
   
    network_interface {
        network_interface_id = aws_network_interface.demo-nic.id
        device_index = 0
    }
    
    tags = {
        Name = "demo-instance"
    }
}