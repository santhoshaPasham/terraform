terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    bucket = "daws7-remote-state"
    key    = "remote-stae-demo"
    region = "us-east-1"
    dynamodb_table = "daws7-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}