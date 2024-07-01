terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.35.0"
    }
  }

  required_version = "~> 1.5"
}

provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project_id
  region      = var.region
}

module "network" {
  source       = "./modules/network"
  network_name = var.network_name
  subnetworks  = var.subnetworks
}

