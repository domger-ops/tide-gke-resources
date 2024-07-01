module "gke-cluster" {
  source   = "./modules/gke"
  clusters = var.clusters
}

module "node-pool" {
  source    = "./modules/containerNodePool"
  node-pool = var.node-pool
  clusters  = module.gke-cluster.name
}

# module "managed-zone" {
#  source = "./modules/managedZones"
# }
