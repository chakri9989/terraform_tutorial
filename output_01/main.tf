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
}

resource "aws_instance" "april_web_instance" {
  ami                         = "ami-0d2986f2e8c0f7d01"
  instance_type               = "t2.micro"
  key_name                    = "chakri9989"
  associate_public_ip_address = true
  tags = {
    "Name" : "output_printing_demo"
  }
}
output "demo_output" {
  value = " printing statement demo"
}
output "output_public_ip" {
  value = aws_instance.april_web_instance.public_ip
}
output "output_instance_id" {
  value = aws_instance.april_web_instance.id
}
output "output_core_count" {
    value = aws_instance.april_web_instance.cpu_core_count
    sensitive = true
}