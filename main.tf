provider "google" {
  project     = "var.gcp_project"
}
resource "google_compute_network" "vpc" {
  name                    = "valod-vpc"
  auto_create_subnetworks = "false"
}