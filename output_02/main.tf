terraform {
  required_providers {
    aws = {
      version = ">= 1.1.9"
      source  = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "april_web_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  tags = {
    "Name" : "april_web_server"
  }
}
