/*output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "security_group_id" {
  value = aws_security_group.sg.id
}

output "ec2_public_ip" {
  value = aws_instance.app.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.app.public_dns
}
*/
output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "public_subnet_id" {
  value = data.aws_subnets.default.ids[0]
}

/*output "security_group_id" {
  value = aws_security_group.sg.id
}*/
output "security_group_id" {
  value = data.aws_security_group.existing_sg.id
}


output "ec2_public_ip" {
  value = aws_instance.app.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.app.public_dns
}
