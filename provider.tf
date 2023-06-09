terraform {
  cloud {
    organization = "DavidGoogleProject"
    workspaces {
      name = "GKE_Create"
    }
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "var.gcp_project"
  region  = "var.region"
  zone    = "var.zone"
}