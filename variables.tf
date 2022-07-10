variable "region" {
    type = string
    description = "AWS 리전"
}

variable "azs" {
  type = list(string)
  description = "가용 영역 목록"
}

variable "s3-name" {
  type = string
  description = "S3의 이름"
}
