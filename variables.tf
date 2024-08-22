variable "credentials_file_path" {
  description = "Path to the service account credentials file"
  type        = string
}

variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnetworks" {
  description = "List of subnetworks to create"
  type = list(object({
    name                     = string
    ip_cidr_range            = string
    region                   = string
    private_ip_google_access = bool
  }))
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "location_of_cluster" {
  description = "The location (region or zone) of the cluster"
  type        = string
}

variable "node_machine_type" {
  description = "The machine type to use for nodes"
  type        = string
  default     = "e2-medium"
}

variable "initial_node_count" {
  description = "The initial number of nodes for the cluster"
  type        = number
  default     = 1
}

variable "subnetwork_name" { 
  description = "The name of the subnetwork to use"
  type        = string
}

variable "gke_admin_members" {
  description = "List of members to assign the GKE Admin role"
  type        = list(string)
}