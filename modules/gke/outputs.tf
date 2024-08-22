output "kubeconfig" {
  description = "Kubernetes configuration to access the cluster"
  value = google_container_cluster.primary.endpoint
}

output "cluster_name" {
  description = "The name of the cluster"
  value = google_container_cluster.primary.name
}

output "node_count" {
  description = "The number of nodes in the cluster"
  value = google_container_cluster.primary.initial_node_count
}
