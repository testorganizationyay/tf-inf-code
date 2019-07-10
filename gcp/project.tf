variable "project" {
  type = string
}

variable "google_project" {
  type = string
}

data "google_project" "project" {}

output "project_number" {
  value = "${data.google_project.project.number}"
}
