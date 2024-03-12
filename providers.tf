terraform {
  required_version = ">= 0.13"
  required_providers {
    google = ">= 5.17.0"
  }
}
provider "google" {
  project     = var.project_id
  region      = "us-central1"
  credentials = GOOGLE_CREDENTIALS
  zone        = "us-central1-c"
}