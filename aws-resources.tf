resource "aws_vpc" "terraform-example-net" {
  cidr_block = "${var.aws_cidr_block}"
  tags {
      Name = "${var.solution_name}"
  }
}

resource "aws_subnet" "aws_subnet_a" {
    vpc_id = "${aws_vpc.terraform-example-net.id}"
    cidr_block = "${var.aws_subnet_a}"
    tags {
        Name = "${var.solution_name}"
    }
}
resource "aws_instance" "terraform-example-web" {
    ami = "${var.aws_image}"
    instance_type = "${var.aws_instance_type}"
    tags {
        Name = "${var.solution_name}"
    }
}
