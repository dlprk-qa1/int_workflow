terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
  profile = "rk"
  region  = "us-east-1"
}
resource "aws_instance" "ebs_optimized" {
  ami           = var.ami_id
  instance_type = var.type
  ebs_optimized = "false"
  tags = {
      Name = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "monitoring" {
  ami           = "app-123"
  instance_type = var.type
  monitoring = false
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
