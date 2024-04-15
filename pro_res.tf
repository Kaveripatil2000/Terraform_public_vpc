provider "aws" {
  region     = "ap-south-1"
  access_key = "------------------"
  secret_key = "------------------"
}

resource "aws_instance" "example"{
ami = "ami-0451f2687182e0411"
instance_type= "t2.micro"
key_name="terraform"
associate_public_ip_address=true
subnet_id=aws_subnet.vpc_subnet.id
security_groups=[aws_security_group.sg_gp.id]
count=1

tags={
Name="vpc_server"
}
}
