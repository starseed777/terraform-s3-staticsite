resource "aws_instance" "development" {
  count         = 2
  ami           = "ami-06b263d6ceff0b3dd"
  instance_type = "t2.micro"
  key_name      = "starseed"

  tags = {
    Name = "internal-blog-dev"
  }
}


