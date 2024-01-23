
output "Public_ip" {
  value = "http://${aws_instance.os2.public_ip}/index.html"
}
output "os_state" {
  value = aws_instance.os2.instance_state
}

output "os_AZ" {
  value = aws_instance.os2.availability_zone
}