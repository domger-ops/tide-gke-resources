output "name" {
  value = { for r in google_container_cluster.primary : r.name => r.name }
}

output "endpoint" {
  value = { for r in google_container_cluster.primary : r.name => r.endpoint }
}
