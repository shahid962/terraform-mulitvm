output "az" {
  value = aws_subnet.private-subnet.*.availability_zone
}

output "subnet" {
  value = aws_subnet.private-subnet.*.id
}