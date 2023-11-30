resource "aws_security_group" "webserver_sg" {

  name = "my_webserver_sg"

  ingress {
    description = "for HTTP"
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "for HTTPS"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "for SSH"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "for outgoing traffic"
    from_port   = var.outgoing_port
    to_port     = var.outgoing_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}