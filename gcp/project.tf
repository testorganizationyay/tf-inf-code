variable "project_id" {}
variable "project_name" {}
variable "org_id" {}
variable "folder_id" {}
variable "region" {}
variable "skip_delete" {}
variable "billing_id" {}

provider "google" {
 region = "${var.region}"
}

resource "google_project" "project" {
 name            = "${var.project_name}"
 project_id      = "${var.project_id}"
 billing_account = "${var.billing_id}"
}

resource "google_project_service" "project" {
  project = "${google_project.project.project_id}"
  service = "compute.googleapis.com"
  disable_on_destroy = false
}

output "project_id" {
 value = "${google_project.project.project_id}"
}
