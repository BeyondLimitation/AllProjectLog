terraform {
  backend "remote" {
    organization = "Lee-personal-project"
    workspaces {
        name = "AllProjectLog"
    }
  }
}

provider "aws" {
  region = var.region
}

module "bucket_save_projects" {
    source = "terraform-aws-modules/s3-bucket/aws"
    version = "3.2.4"

    bucket = var.s3-name
    # 권한이 있는 자만 접근가능. 기본적으로 Private.
    acl    = "private"

    # Terraform이 삭제하기 쉽게 함.
    force_destroy = true

    tags = {
        "IaCTool" = "Terraform"
    }
}

resource "aws_s3_object" "nextcloud_project" {
  bucket = var.s3-name
  key    = "nextcloud/README.md"
  source = "s3/README.md"
}
