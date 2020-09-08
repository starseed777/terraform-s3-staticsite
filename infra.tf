provider "aws" {
  version = "~> 3.0"
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "blog-bucket" {
  bucket = "blogjawnt"
  acl    = "public-read"
  policy = file("policy.json")

  tags = {
    Name        = "blogjawnt"
    Environment = "Dev"
  }



  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}

resource "aws_instance" "development" {
  count         = 2
  ami           = "ami-06b263d6ceff0b3dd"
  instance_type = "t2.micro"
  key_name      = "starseed"

  tags = {
    Name = "internal-blog-dev"
  }
}