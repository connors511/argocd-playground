terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = ">= 2.35.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">=2.24.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "scaleway" {
  region = var.scw_region
  access_key = var.scw_access_key
  secret_key = var.scw_secret_key
  organization_id = var.organization_id
  project_id      = var.project_id
}
