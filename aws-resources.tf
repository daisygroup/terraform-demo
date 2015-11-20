resource "aws_vpc" "terraform-demo-net" {
  cidr_block = "${var.aws_cidr_block}"
  tags {
      Name = "${var.solution_name}"
  }
}

resource "aws_subnet" "aws_subnet_a" {
    vpc_id = "${aws_vpc.terraform-demo-net.id}"
    cidr_block = "${var.aws_subnet_a}"
    tags {
        Name = "${var.solution_name}"
    }
}
resource "aws_instance" "terraform-demo-web" {
    ami = "${var.aws_image}"
    instance_type = "${var.aws_instance_type}"
    tags {
        Name = "${var.solution_name}"
    }
}

resource "aws_db_instance" "default" {
    identifier = "mydb-rds"
    allocated_storage = 10
    engine = "mysql"
    engine_version = "5.6.17"
    instance_class = "db.t1.micro"
    name = "mydb"
    username = "${var.demo_username}"
    password = "${var.demo_password}"
    db_subnet_group_name = "my_database_subnet_group"
    parameter_group_name = "default.mysql5.6"
}
