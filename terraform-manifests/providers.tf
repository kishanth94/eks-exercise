terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  shared_credentials_file = var.credentials_file
  profile = var.profile
  region = var.aws_region
}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjunction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}
