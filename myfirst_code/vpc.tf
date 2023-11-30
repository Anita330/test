# main.tf

provider "aws" {
  region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_vpc" "my_fluence" {
  cidr_block = "10.0.0.0/16"  # Set your desired CIDR block for the VPC

  tags = {
    
    Name  = "anita"
    DM    = "sriramdeshpande"
    email = "anita.kar@einfochips.com"
    project = "fluence"
    end_date = "30-11-2023"
    BU = "PES"

  
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"  # Set your desired CIDR block for the subnet
  availability_zone       = "us-east-1a"    # Set your desired availability zone

  map_public_ip_on_launch = true

  tags = {
    Name = "my-subnet"
  }
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "my-igw"
  }
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "my-route-table"
  }
}

resource "aws_route_table_association" "my_route_association" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}
