variable "google_project_id" {
  description = "- (Required)  Google account project id."
}
variable "region" {
  description = "- (Required) Google region where the cluster will be deployed."
}
variable "cluster_version" {
  description = "- (Required) Version of the cluster."
}
variable "cluster_node_count" {
  description = "- (Required) Number of nodes for the cluster."
}
variable "google_credentials" {
  description = "- (Required) your google service account `example.json`"
}
variable "cluster_network" {
  default = "default"
  description = "- (Optional) The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network."
}
variable "cluster_name" {
  description = "- (Required) The name of the cluster, unique within the project and location."
}

variable "subnetwork" {
  default = "default"
  description = "- (Optional) The name or self_link of the Google Compute Engine subnetwork in which the cluster's instances are launched."
}

variable "machine_type" {
  default = "n1-standard-2"
  description = "- (Optional) The name of a Google Compute Engine machine type. Defaults to n1-standard-1. "
}

variable "deployment_environment" {}
variable "google_bucket_name" {}
