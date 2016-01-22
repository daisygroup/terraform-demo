variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "azure_settings_file" {}
variable "aws_region" {
    default = "eu-west-1"
}

variable "aws_cidr_block" {
    default = "10.50.0.0/16"
}

variable "azure_cidr_block" {
    default = "10.51.0.0/16"
}

variable "azure_subnet_a" {
  default = "10.51.1.0/24"
}

variable "aws_subnet_a" {
  default = "10.50.1.0/24"
}

variable "aws_image" {
    default = "ami-47a23a30"
}

variable "aws_instance_type" {
    default = "t2.micro"
}

variable "aws_default_tag" {
    default = "terraform-example"
}

variable "solution_name" {
    default = "terraform-example"
}

variable "solution_description" {
    default = "Terraform Example"
}

variable "azure_hs_name" {
    default = "terraform-example"
}

variable "azure_hs_label" {
    default = "terraform-example"
}

variable "azure_instance_name" {
    default = "terraform-example"
}

variable "azure_linux_image" {
    default = "Ubuntu Server 14.04 LTS"
}

variable "azure_instance_size" {
    default = "Basic_A0"
}

variable "azure_storage_service_name" {}

variable "azure_location" {
    default = "North Europe"
}

variable "demo_username" {}
variable "demo_password" {}
