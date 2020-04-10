terraform {
  required_version = "~> 0.12.0"
  required_providers {
    tls   = "~> 2.0"
    local = "~> 1.3"
    null  = "~> 2.1"
  }
}

provider "aws" {
  version = "~> 2.5"
  region  = var.region
}
