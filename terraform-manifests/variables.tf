variable "aws_region" {
  default = "eu-west-1"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "credentials_file" {
  description = "PATH to credentials file"
  default     = "~/.aws/credentials"
}

variable "profile" {
  description = "Profile of AWS credential."
  default     = "testing"
}
