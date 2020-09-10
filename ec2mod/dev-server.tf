resource "aws_instance" "development" {
  count         = length(var.servername)
  ami           = var.serverimage
  instance_type = var.servertype 
  key_name      = var.keypair

  tags = {
    Name = var.servername[count.index]
  }
}


