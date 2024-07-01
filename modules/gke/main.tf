resource "google_container_cluster" "primary" {

  for_each = var.clusters # this line tells the resource we want to iterate for every item in the map

  name     = each.key # as the system iterates each key from the respective map will be used
  location = each.value.zone
  deletion_protection = false


  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {

    client_certificate_config {
      issue_client_certificate = each.value.issue_cert
    }
  }
}
