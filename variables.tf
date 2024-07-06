# Clusters
variable "clusters" {
  type = map(any)
  default = {
    tide-app = {
      location   = "us-west1-b"
      issue_cert = "false"
      zone       = "us-west1-b"
      deletion_protection = false
    }
  }
}

variable "node-pool" {
  type = map(any)
  default = {
    tide-node-pool = {
      location     = "us-west1-b"
      node_count   = 3
      labels       = "application"
      machine_type = "n1-standard-1"
      cluster      = "tide-app"
    }


  }
}
