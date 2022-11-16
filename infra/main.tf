variable "project_id" {}
variable "org_id" {}
variable "billing_account" {}

resource "google_project" "project" {
  name            = var.project_id
  project_id      = var.project_id
  org_id          = var.org_id
  billing_account = var.billing_account
}

terraform {
  backend "gcs" {
    bucket = "honahuku-schedule-batch-insert-tfstate"
    prefix = "terraform/state"
  }
}

provider "google" {
  region = "asia-northeast1"
  zone   = "asia-northeast1-a"
}