resource "azure_hosted_service" "terraform-demo-service" {
    name = "${var.azure_hs_name}"
    location = "${var.azure_location}"
    ephemeral_contents = false
    description = "Hosted service created by Terraform."
    label = "${var.azure_hs_label}"
}

resource "azure_instance" "terraform-demo-web" {
    name = "${var.azure_instance_name}"
    hosted_service_name = "${azure_hosted_service.terraform-demo-service.name}"
    depends_on = ["azure_hosted_service.terraform-demo-service"]
    image = "${var.azure_linux_image}"
    size = "${var.azure_instance_size}"
    storage_service_name = "${var.azure_storage_service_name}"
    location = "${var.azure_location}"
    username = "${var.demo_username}"
    password = "${var.demo_username}"

    endpoint {
        name = "SSH"
        protocol = "tcp"
        public_port = 22
        private_port = 22
    }
}

resource "azure_sql_database_server" "sql-serv" {
    location = "${var.azure_location}"
    username = "${var.demo_username}"
    password = "${var.demo_username}"
    version = "2.0"
}
