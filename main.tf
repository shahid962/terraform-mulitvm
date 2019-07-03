module "vpc" {
  source = "./vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  subnet_count = var.subnet_count
  az = var.az
}

module "ec2" {

  source = "./ec2"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  subnet_id = module.vpc.subnet
  subnet_count = var.subnet_count
  az = module.vpc.az
  ec2_count = 6
}