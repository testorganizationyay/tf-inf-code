variable "project_id" {}
variable "project_roles" {}
variable "project_name" {}
variable "billing_account" {}
variable "org_id" {}
variable "folder_id" {}
variable "region" {}

provider "google" {
 region = "${var.region}"
}

resource "google_project" "project" {
 name            = "${var.project_name}"
 project_id      = "${var.project_id}"
 billing_account = "${var.billing_account}"
}

resource "google_project_services" "project" {
 project = "${google_project.project.project_id}"
 services = [
   "compute.googleapis.com"
 ]
}

output "project_id" {
 value = "${google_project.project.project_id}"
}
