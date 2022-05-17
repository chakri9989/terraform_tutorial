provider "aws" {
  region = "ap-south-1"
}
variable "each_loop_variable" {
  description = "terraform ecah loop variable"
  type        = list(string)
  default     = ["rama", "krishna", "vishnu"]
}
// resource "aws_iam_user" "ach_loop_variable" {
//  for_each = toset(var.each_loop_variable)
//  name     = each.value
// }

output "testing_users" {
  description = " users creations using for loop "
  value       = [for name in var.each_loop_variable : name]
}