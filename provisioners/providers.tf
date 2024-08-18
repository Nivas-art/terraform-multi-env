terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.63.0"
    }
  }
  backend "s3" {
    bucket = "provi-bkt"
    key    = "provi"
    region = "us-east-1"
    dynamodb_table = "provi-db"
  }
}

provider "aws" {
    region = "us-east-1"
}