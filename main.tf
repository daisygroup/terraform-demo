provider "aws" {
    access_key = "${var.aws_access_key_id}"
    secret_key = "${var.aws_secret_access_key}"
    region = "${var.aws_region}"
}

provider "azure" {
      settings_file = "${file("azure-credentials.publishsettings")}"
}
