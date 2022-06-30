terraform {
  backend "remote" {
    organization = "lee-s3"
    workspaces {
        name = "AllProjectLog"
    }
  }
}

provider "aws" {
  region = var.region
}