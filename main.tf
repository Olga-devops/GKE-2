resource "google_container_cluster" "master" {
  name     = var.cluster_name
  location = var.region
  project  = var.google_project_id
  
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
}
