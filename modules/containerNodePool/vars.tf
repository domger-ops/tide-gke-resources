variable "node-pool" {
  type = map(any)
  default = {
    backup-node-pool = {
      location     = "us-central1"
      cluster      = "weather-app"
      machine_type = "e2-medium"
      node_count   = 2
      labels       = "poc"
    }


  }
}

variable "clusters" {
  type        = map(any)
  default     = { "clustername" = "clusterid" }
  description = "kube clusters we connect to"
}
