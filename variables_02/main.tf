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
variable "ami" {
  description = "ami image value"
  type        = string
  default     = "ami-0d2986f2e8c0f7d01"
}
variable "instance_type" {
  description = " instance type value"
  type        = string
  default     = "t2.micro"
}
variable "key_name" {
  description = " key name values"
  type        = string
  default     = "chakri9989"
}
variable "associate_public_ip_address" {
  description = "public ip address values assign"
  type        = bool
  default     = true
}