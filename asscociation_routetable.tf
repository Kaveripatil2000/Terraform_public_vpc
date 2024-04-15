resource "aws_route_table_association" "public_route_assoc"{
subnet_id=aws_subnet.vpc_subnet.id
route_table_id=aws_route_table.public_routetable.id
}
