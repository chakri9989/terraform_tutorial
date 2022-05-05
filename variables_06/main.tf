terraform {
  required_providers {
    aws = {
      version = ">= 1.1.9"
      source  = "hashicorp/aws"
    }
  }
}
resource "aws_instance" "april_web_instance" {
  ami                         = "ami-0d2986f2e8c0f7d01"
  instance_type               = var.instance_type
  key_name                    = "chakri9989"
  associate_public_ip_address = true
  tags = {
    "Name" : "command_line variable passing"
  }
}
