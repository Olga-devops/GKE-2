resource "google_dns_managed_zone" "my-dns" {
  name     = "google_dns"
  dns_name = "olgaojjeh.com"
  project  = "${var.google_project_id}"
}
