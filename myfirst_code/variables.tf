variable "region" {
  default = "ap-south-1"
}

variable "ami" {
  default = "ami-08e5424edfe926b43"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_key" {
  default = "test"
}

variable "http_port" {
  default = 80
}

variable "https_port" {
  default = 443
}

variable "ssh_port" {
  default = 22
}

variable "outgoing_port" {
  default = 0
}

variable "azs" {
  default = "ap-south-1a"
}