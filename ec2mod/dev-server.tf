resource "aws_instance" "development" {
  count         = var.servercount
  ami           = var.serverimage
  instance_type = var.servertype 
  key_name      = var.keypair

  tags = {
    Name = "internal-blog-dev"
  }
}


