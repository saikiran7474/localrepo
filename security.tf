resource "aws_security_group" "sg1" {
    name = "sg1"
    description = "sg1"
    vpc_id = aws_vpc.my_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "sg1"
    }
    depends_on = [
        aws_vpc.vpc1
    ]
}