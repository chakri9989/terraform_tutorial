variable "ami" {
  description = "tfvars ami image"
  type        = string
  default     = "ami-0d2986f2e8c0f7d01"
}
variable "instance_type" {
  description = "tfvars instance type"
  type        = string
  default     = "t2.micro"
}
variable "key_name" {
  description = "tfvars key name"
  type        = string
  default     = "chakri9989"
}
variable "associate_public_ip_address" {
  description = "tfvars public ip address"
  type        = bool
  default     = false
}