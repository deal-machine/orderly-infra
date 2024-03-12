terraform {
  required_version = ">= 0.13"
  required_providers {
    google = ">= 5.17.0"
  }
  backend "gcs" {
    # create by gibhubaction
  }
}
provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = GOOGLE_CREDENTIALS
}