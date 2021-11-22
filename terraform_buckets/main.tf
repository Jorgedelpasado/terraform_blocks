resource "google_storage_bucket" "raw-bucket" {
  name          = var.raw_bucket_name
  project       = var.project_id
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "staging-bucket" {
  name          = var.staging_bucket_name
  project       = var.project_id
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true

  uniform_bucket_level_access = true
}