output "instance_ip_addr" {
  value       = aws_instance.april_web_instance.private_ip
  description = "The private IP address of the main server instance."
}

#output "lb_address" {
#  value = aws_alb.pril_web_instance.public_dns
#}

# output "ip" {
#  value = "${aws_instance.april_web_instance.*.public_ip}"
# }

#output "password" {
#  sensitive = true
#  value = var.secret_password
#}
