provider "aws" {
    access_key = "${var.aws_access_key_id}"
    secret_key = "${var.aws_secret_access_key}"
    region = "${var.aws_region}"
}

provider "azure" {
    settings_file = "${var.azure_settings_file}"
}

resource "azure_hosted_service" "terraform-service" {
    name = "${var.azure_hs_name}"
    location = "${var.azure_location}"
    ephemeral_contents = false
    description = "Hosted service created by Terraform."
    label = "${var.azure_hs_label}"
}

resource "azure_instance" "web" {
    name = "${var.azure_instance_name}"
    hosted_service_name = "${azure_hosted_service.terraform-service.name}"
    image = "${var.azure_linux_image}"
    size = "${var.azure_instance_size}"
    storage_service_name = "${var.azure_storage_service_name}"
    location = "${var.azure_location}"
    username = "${var.azure_instance_username}"
    password = "${var.azure_instance_password}"

    endpoint {
        name = "SSH"
        protocol = "tcp"
        public_port = 22
        private_port = 22
    }
}

resource "aws_instance" "web" {
    ami = "${var.aws_image}"
    instance_type = "${var.aws_instance_type}"
    tags {
        Name = "daisy-tf-demo"
    }
}
