resource "google_container_node_pool" "default" {

  for_each = var.node-pool

  name       = each.key
  location   = each.value.location
  cluster    = lookup(var.clusters, each.value.cluster, "cluster not found")
  node_count = each.value.node_count

  node_config {
    preemptible  = true
    machine_type = each.value.machine_type

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

  }
}
