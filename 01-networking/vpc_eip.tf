resource "aws_eip" "this" {
  domain = "vpc"

  tags = { Name = "dvn-workshop=vpc-nat-gateway" }
}