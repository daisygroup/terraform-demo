variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "aws_region" {
    default = "eu-west-1"
}
variable "aws_vpc_cidr_block" {
    default = "terraform-demo-vpc"
}
}
variable "aws_image" {
    default = "ami-47a23a30"
}
variable "aws_instance_type" {
    default = "t2.micro"
}
variable "azure_settings_file" {
    default = "~/.azure/azure-credentials.publishsettings"
}
variable "azure_hs_name" {}
variable "azure_hs_label" {
    default = "tf-hs-01"
}
variable "azure_instance_name" {}
variable "azure_linux_image" {}
variable "azure_instance_size" {}
variable "azure_storage_service_name" {}
variable "azure_location" {
    default = "North Europe"
}
variable "azure_instance_username" {}
variable "azure_instance_password" {}
