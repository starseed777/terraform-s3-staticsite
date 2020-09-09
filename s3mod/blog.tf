
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
