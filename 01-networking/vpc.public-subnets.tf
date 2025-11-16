resource "aws_subnet" "vpc_public_subnet_1a" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.0/26"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "dvn-workshop-vpc-public-subnet-1a"
  }
}

resource "aws_subnet" "vpc_public_subnet_1b" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.64/26"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "dvn-workshop-vpc-public-subnet-1b"
  }
}