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