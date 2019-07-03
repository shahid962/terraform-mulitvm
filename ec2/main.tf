resource "aws_instance" "ec2" {
  count = var.ec2_count
  ami = "ami-056ee704806822732"
  instance_type = "t2.micro"
  subnet_id = element(var.subnet_id, count.index)
  availability_zone = element(var.az,count.index)
  tags = {
    Name = "${var.instance_name}-${count.index}"

  }
}

resource "aws_network_interface" "net" {
    count = var.ec2_count
    subnet_id = element(var.subnet_id, count.index)
    }

resource "aws_network_interface_attachment" "netattach" {
  count = var.ec2_count
  device_index = 1
  instance_id = aws_instance.ec2[count.index].id
  network_interface_id = aws_network_interface.net[count.index].id
}