# main.tf

terraform {
  required_version = "= 1.1.3"
  required_providers {
    onelogin = {
      source  = "onelogin/onelogin"
      version = "0.1.25"
    }
  }
}

provider "onelogin" {
  # Configuration options
}
