terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket-2025"
    prefix = "terraform/state"
  }
}