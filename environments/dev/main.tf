provider "aws" {
  region = "ap-northeast-1"
}

module "vpc" {
  source = "../../modules/aws-vpc"
}
