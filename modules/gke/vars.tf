# Clusters
variable "clusters" {
  type = map(any)
  default = {
    test-cluster = {
      location   = "us-west1"
      issue_cert = "true"
    }
  }
}
