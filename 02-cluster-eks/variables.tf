variable "tags" {
  type = map(string)

  default = {
    Environment = "production"
    Project     = "dvn-workshop"
  }
}

variable "assume_role" {
  type = object({
    arn    = string
    region = string
  })

  default = {
    arn    = "arn:aws:iam::241533147262:role/dvn-workshop"
    region = "us-east-1"
  }
}