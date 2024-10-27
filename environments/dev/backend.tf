terraform {
  backend "s3" {
    bucket = "dev-terraform-lab-states"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
