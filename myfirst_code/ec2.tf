resource "aws_instance" "anita" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.instance_key
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]


}