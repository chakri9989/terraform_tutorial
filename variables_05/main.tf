terraform {
  required_providers {
    aws = {
      version = ">= 1.1.9"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
	region = "ap-south-1"
	access_key = "***************"
	secret_key = "***************"
}

resource "aws_instance" "ec2_tfvars" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  tags = {
    "Name" = "multiple_tfvars_files"
  }
}
