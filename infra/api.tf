resource "google_project_service" "project" {
  service = "calendar-json.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}