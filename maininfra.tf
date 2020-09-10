provider "aws" {
  version = "~> 3.0"
  profile = var.aws-profile
  region  = var.aws-region
}

terraform {
  backend "s3" {
    bucket         = var.backupbucket
    key            = var.path
    region         = "us-east-1"
    dynamodb_table = "maininfra-lock"
  }
}


module "blog" {
  source = "./s3mod"
}

module "dev-server" {
  source = "./ec2mod"
}


