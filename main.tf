provider "aws" {
  region = var.aws_region
}

module "my_module" {
  source = "./modules/my_module"
  instance_type = var.instance_type
  ami = var.ami
}
