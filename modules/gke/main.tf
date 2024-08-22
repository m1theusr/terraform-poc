resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.location_of_cluster

  node_config {
    machine_type = var.node_machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
    ]
  }

  initial_node_count = var.initial_node_count

  # Enable the "http_load_balancing" addon
  addons_config {
    http_load_balancing {
      disabled = false
    }
  }

  # Networking
  network    = var.network_name
  subnetwork = var.subnetwork_name
}
