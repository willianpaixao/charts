terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.0.0"
    }
  }
}

provider "github" {
  token = var.token
}

resource "github_repository" "charts" {
  name        = "charts"
  description = "Helm chart repository"

  visibility = "public"
}
