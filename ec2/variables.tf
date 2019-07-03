variable "vpc_cidr" {

}
variable "public_subnet_cidr" {}
variable "subnet_id" {
  type = "list"
}
variable "subnet_count" {}
variable az {
  type = "list"
}

variable "ec2_count" {}

variable "instance_name" {
  default = "disha"
}