resource "google_service_account" "calendar" {
  project      = var.project_id
  account_id   = "calendar"
  display_name = "Calendar Service Account"
  description  = "grants calendar read and write permissions"
}