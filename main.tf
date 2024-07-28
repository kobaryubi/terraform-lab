provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d03c6e00d5732e28"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

provider "google" {
  project = var.google_project
}

resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
}

resource "google_artifact_registry_repository" "gitlab-repo" {
  repository_id = "gitlab-repo"
  format        = "DOCKER"
  location      = var.google_location
}
