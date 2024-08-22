variable "cluster_name" {
  description = "The name of the cluster"
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

variable "network_name" {
  description = "The name of the VPC network to use"
  type        = string
}

variable "subnetwork_name" {
  description = "The name of the subnetwork to use"
  type        = string
}
