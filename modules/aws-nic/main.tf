resource "aws_network_interface" "demo-nic" {
    subnet_id   = var.subnet_id
    private_ips = var.private_ips
    
    tags        = var.tags
}

