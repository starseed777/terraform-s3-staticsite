variable servercount {
  type    = number 
  default = 2
}

variable serverimage {
  type    = string
  default = "ami-06b263d6ceff0b3dd"
}

variable servertype {
  type    = string
  default = "t2.micro"
}

variable keypair {
  type    = string
  default = "starseed"
}

variable servername {
  type    = list(string) 
  default = ["internal-blog-dev", "internal-blog-dev2"]
}
