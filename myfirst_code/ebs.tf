resource "aws_ebs_volume" "anita" {
  availability_zone = var.azs
  size              = 8
  type              = "gp2"
  tags = {
    Name = "anita_ebs"
  }
}

resource "aws_volume_attachment" "anita-attach" {
  device_name = "/dev/sdd"
  volume_id   = aws_ebs_volume.anita.id
  instance_id = aws_instance.myserver.id
}