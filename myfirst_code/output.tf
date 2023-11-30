output "public_ip" {
  value = aws_instance.anita.public_ip
}

output "ebs_arn" {
  value = aws_ebs_volume.anita.arn
}

output "ec2_sg" {
  value = aws_security_group.webserver_sg.name
}