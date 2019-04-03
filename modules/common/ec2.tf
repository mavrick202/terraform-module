resource "aws_instance" "web-1" {
    ami = "${lookup(var.amis,var.aws_region)}"
    availability_zone = "us-east-1a"
    instance_type = "t2.nano"
    key_name = "LaptopKey"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags {
        Name = "Server-${count.index}"
        Env = "Prod"
        Owner = "Sree"
    }
}

