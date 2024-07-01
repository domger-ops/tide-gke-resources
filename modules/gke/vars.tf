# Clusters
variable "clusters" {
  type = map(any)
  default = {
    test-cluster = {
      location   = "us-east1"
      issue_cert = "true"
    }
  }
}
