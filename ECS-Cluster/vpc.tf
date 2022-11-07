resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  # We will use dns if we want to provision database into our VPC
  # enable_dns_support   = true
  # enable_dns_hostnames = true
    tags       = {
        Name = "ECS-VPC"
    }
}