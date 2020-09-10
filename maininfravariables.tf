variable aws-profile {
  type    = string
  default = "default"
}

variable aws-region {
  type    = string
  default = "us-east-1"
}


variable backupbucket {
  type    = string
  default = "us-east-1"
}

variable path {
  type    = string
  default = "terraform/state.tfstate"
}
