variable "vpc_cidr" {

}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {
  type = "list"
}
variable "subnet_count" {}
variable az {
  type = "list"
}