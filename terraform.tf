terraform {
  cloud {
    organization = "masahiko-kobayashi"
    workspaces {
      name = "terraform-lab-dev"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }

  required_version = ">= 1.9.0"
}
