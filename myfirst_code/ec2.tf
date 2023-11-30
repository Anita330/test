resource "aws_instance" "anita" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.instance_key
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]

  user_data = <<EOF
#!/bin/bash -xe
cd /home/ubuntu
ls -lah
echo "hello" > abc.txt
current_user=$(whoami)
echo "Current user: $current_user" >> User_Details.txt  
EOF

  # provisioner "local-exec" {
  # command = "ansible-playbook -i '${self.public_ip},' -u ubuntu -i ~/aws/test.pem /home/einfochips/course/new-tf/01/ansible/mysql_database.yaml"
  # }

}