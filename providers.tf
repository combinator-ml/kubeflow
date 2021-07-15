terraform {
  required_providers {
    k8s = {
      version = ">= 0.8.0"
      source  = "banzaicloud/k8s"
    }
    kubernetes = {
      version = "= 1.13.3"
    }
  }
  required_version = ">= 0.12"
}
