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
