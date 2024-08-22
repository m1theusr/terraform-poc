variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "gke_admin_members" {
  description = "List of members (service accounts or users) to be granted GKE admin role"
  type        = list(string)
}
