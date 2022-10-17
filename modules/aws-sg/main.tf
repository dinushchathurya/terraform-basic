resource "aws_security_group" "demo-sg" {
    name        = "demo-sg"
    description = "Allow all inbound traffic"
    vpc_id      = aws_vpc.demo.id

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["aws_vpc.demo.cidr_block"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "demo-sg"
    }
}