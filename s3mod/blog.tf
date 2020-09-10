
resource "aws_s3_bucket" "blog-bucket" {
  bucket = var.bucketname
  acl    = "public-read"
  policy = file("policy.json")

  tags = {
    Name        = var.tagname 
    Environment = var.bucketenv
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
