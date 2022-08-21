terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.52.0"
    }
  }

  required_version = ">= 0.14"
  
  backend "gcs" {
    bucket = "${var.bucket_name}"
    prefix = "terraform/state"
  }
}

