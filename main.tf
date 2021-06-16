terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "s3" {
    bucket = var.backend_bucket
    key    = var.backend_key
    region = var.backend_region
  }
}
