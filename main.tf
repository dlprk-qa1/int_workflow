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
 access_key = "AKIAYCIXBNSA33RC2ESM"
  secret_key = "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"
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
