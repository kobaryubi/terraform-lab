variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "instance_name" {
  description = "Value of the name tag for the EC2 instance"
  type        = string
  default     = "TestAppServerInstance"
}

variable "google_project" {
  description = "Google Cloud project ID"
  type        = string
  default     = "masahiko-kobayashi"
}

variable "google_location" {
  description = "Google Cloud location"
  type        = string
  default     = "us-central1"
}
