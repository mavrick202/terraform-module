#provider "aws" {
#    access_key = "${var.aws_access_key}"
#    secret_key = "${var.aws_secret_key}"
#    region = "${var.aws_region}"
#}

module "dev-project-1" {

source = "../modules/common/"
aws_region="${var.aws_region}"
public_subnet2_cidr="${var.public_subnet2_cidr}"
public_subnet1_name="${var.public_subnet1_name}"
public_subnet3_cidr="${var.public_subnet3_cidr}"
public_subnet2_name="${var.public_subnet2_name}"
public_subnet3_name="${var.public_subnet3_name}"
Main_Routing_Table="${var.Main_Routing_Table}"
aws_secret_key="${var.aws_secret_key}"
key_name="${var.key_name}"
private_subnet_cidr="${var.private_subnet_cidr}"
aws_access_key="${var.aws_access_key}"
vpc_cidr="${var.vpc_cidr}"
vpc_name="${var.vpc_name}"
IGW_name="${var.IGW_name}"
public_subnet1_cidr="${var.public_subnet1_cidr}"
private_subnet_name="${var.private_subnet_name}"

}
