output "public_ip" {
    value = aws_instance.ec2[each.key].public_ip
}