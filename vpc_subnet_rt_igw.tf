resource "aws_vpc" "public_vpc"{
cidr_block="10.0.0.0/16"

tags={
Name="public_vpc_kp"
}
}

resource "aws_subnet" "vpc_subnet"{
vpc_id=aws_vpc.public_vpc.id
cidr_block="10.0.1.0/24"
availability_zone="ap-south-1a"
map_public_ip_on_launch=true

tags={
Name="public_subnet_kp"
}
}

resource "aws_internet_gateway" "public_igw"{
vpc_id=aws_vpc.public_vpc.id

tags={
Name="public_igw_kp"
}
}

resource "aws_route_table" "public_routetable"{
vpc_id=aws_vpc.public_vpc.id

tags={
Name="puble_routetable"
}

route{
cidr_block="0.0.0.0/0"
gateway_id=aws_internet_gateway.public_igw.id
}
}
