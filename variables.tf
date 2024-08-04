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
