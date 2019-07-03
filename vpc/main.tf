resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  enable_classiclink = false
  enable_dns_hostnames = true
  assign_generated_ipv6_cidr_block = false
 }




# Define the private subnet
resource "aws_subnet" "private-subnet" {
  count = var.subnet_count
  vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = element(var.private_subnet_cidr, count.index)
  availability_zone = element(var.az,count.index)
}

