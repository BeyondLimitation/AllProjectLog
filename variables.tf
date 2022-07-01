variable "region" {
    type = string
    description = "AWS 리전"
}

variable "azs" {
  type = list(string)
  description = "가용 영역 목록"
}

variable "s3-bucket-version" {
  type = string
  description = "Module 'terraform-aws-modules/s3-bucket/aws'의 Version"
}