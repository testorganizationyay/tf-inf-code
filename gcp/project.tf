variable "project" {
  type = string
}

data "google_project" "project_test" {}

output "project_number" {
  value = "${data.google_project.project_test.number}"
}
