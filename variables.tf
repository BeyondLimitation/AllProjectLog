variable "region" {
    type = string
    description = "AWS 리전"
}

variable "azs" {
  type = list(string)
  description = "가용 영역 목록"
}