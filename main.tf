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

module "gke" {
  source             = "./modules/gke"
  cluster_name       = var.cluster_name
  location_of_cluster = var.region
  node_machine_type  = var.node_machine_type
  initial_node_count = var.initial_node_count
  network_name       = var.network_name
  subnetwork_name    = var.subnetwork_name
}

module "iam" {
  source            = "./modules/iam"
  project_id        = var.project_id
  gke_admin_members = var.gke_admin_members
}