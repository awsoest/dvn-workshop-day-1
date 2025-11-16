resource "aws_subnet" "vpc_private_subnet_1a" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.128/26"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    Name        = "dvn-workshop-vpc-private-subnet-1a"
    Project     = "dvn-workshop"
    Environment = "production"
  }
}

resource "aws_subnet" "vpc_private_subnet_1b" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.192/26"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    Name        = "dvn-workshop-vpc-private-subnet-1b"
    Project     = "dvn-workshop"
    Environment = "production"
  }
}
