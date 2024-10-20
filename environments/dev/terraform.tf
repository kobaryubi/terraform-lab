terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.72"
    }
  }

  backend "s3" {
    bucket = "dev-terraform-lab-states"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
