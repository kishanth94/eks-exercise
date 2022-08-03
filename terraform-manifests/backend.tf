# Terraform backend for remote state
terraform {
  backend "s3" {
    bucket                  = "imaya-terraform-remote-state-01"
    dynamodb_table          = "imaya-terraform-state-lock-dynamo"
    region                  = "eu-west-1"
    key                     = "eks/terraform.tfstate"
    profile                 = "testing"
    shared_credentials_file = "~/.aws/credentials"
  }
}
