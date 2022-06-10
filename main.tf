terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider aws{
 region="us-east-1"
 access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}
module "compute" {
  source = "./modules/compute"
}

module "network" {
  source = "./modules/network"
}
module "storage" {
  source = "./modules/storage"
}
