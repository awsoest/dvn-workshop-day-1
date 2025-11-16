resource "aws_route_table" "private"{
    vpc_id = aws_vpc.this.id

    route {
        cidr_block = "0.0.0/0"
        gateway_id = aws_nat_gateway.this.id    
    }

    tags = {
        Name = "dvn-workshop-vpc-private-route-table"
    }
}

resource "aws_route_table_association" "vpc_private_subnet_1a" {
  subnet_id      = aws_subnet.vpc_private_subnet_1a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "vpc_private_subnet_1b" {
  subnet_id      = aws_subnet.vpc_private_subnet_1b.id
  route_table_id = aws_route_table.private.id
}