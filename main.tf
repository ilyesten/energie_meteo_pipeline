terraform {
  required_version = ">=1.16.5"



  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}


provider "google" {
  project = "dtc-de-course-510513"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "data_lake" {

  name                        = "energie-meteo-510513"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
}
resource "google_bigquery_dataset" "dataset" {
  dataset_id = "energie_meteo"
  location   = "US"



}

