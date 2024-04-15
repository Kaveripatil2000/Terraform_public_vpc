resource "aws_security_group" "sg_gp"{
vpc_id=aws_vpc.public_vpc.id

tags={
Name="vpc_security_group"
}

ingress{
from_port=0
to_port=0
protocol="-1"
cidr_blocks=["0.0.0.0/0"]
}

egress{
from_port=0
to_port=0
protocol="-1"
cidr_blocks=["0.0.0.0/0"]
}

}
