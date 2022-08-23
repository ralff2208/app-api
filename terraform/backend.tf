terraform {
  backend "gcs" {
    bucket = "test-tembici-gcs"
    prefix = "terraform/state"
  }
}
