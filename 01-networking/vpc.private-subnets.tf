resource "aws_subnet" "vpc_private_subnet_1a" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.128/26"

  tags = {
    Name = "dvn-workshop-vpc-private-subnet-1a"
  }
}

resource "aws_subnet" "vpc_private_subnet_1b" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.192/26"

  tags = {
    Name = "dvn-workshop-vpc-private-subnet-1b"
  }
}