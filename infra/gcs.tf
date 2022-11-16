resource "google_storage_bucket" "tfstate" {
  name          = "honahuku-schedule-batch-insert-tfstate"
  force_destroy = false
  location      = "asia"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
  public_access_prevention = "enforced"
}