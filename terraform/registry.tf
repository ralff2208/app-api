resource "google_artifact_registry_repository" "repo" {
  provider      = google-beta
  project       = var.project_id
  location      = var.region
  repository_id = var.registry_name
  description   = "Repo for flask application"
  format        = "DOCKER"
}
