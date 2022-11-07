resource "aws_subnet" "subnet" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "10.1.0.0/22"
}