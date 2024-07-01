variable "network_name" {
  description = "labs-gke-01"
  type        = string
}

variable "subnetworks" {
  description = "labs-subnets-01"
  type = list(object({
    name                     = string
    ip_cidr_range            = string
    region                   = string
    private_ip_google_access = bool
  }))
}