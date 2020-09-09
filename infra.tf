provider "aws" {
  version = "~> 3.0"
  profile = var.aws-profile
  region  = var.aws-region
}

module "blog" {
  source = "./s3mod"
}

module "dev-server" {
  source = "./ec2mod"
}


