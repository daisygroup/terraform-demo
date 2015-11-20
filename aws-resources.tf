resource "aws_vpc" "terraform-demo-vpc" {
  cidr_block = "${var.aws_vpc_cidr_block}"
  tags {
    Name = "daisy-terraform-demo"
  }
}
resource "aws_instance" "terraform-demo-web" {
    ami = "${var.aws_image}"
    instance_type = "${var.aws_instance_type}"
    tags {
        Name = "daisy-terraform-demo"
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
