variable "tags" {
  type = map(string)

  default = {
    Environemnt = "production"
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

variable "remote_backend" {
  type = object({
    bucket_name         = string
    dynamo_table_name   = string
    dynamo_billing_mode = string
    hash_key            = string
    hash_key_type       = string
  })

  default = {
    bucket_name         = "dvn-workshop-remote-backend"
    dynamo_table_name   = "dvn-workshop-state-lock"
    dynamo_billing_mode = "PAY_PER_REQUEST"
    hash_key            = "LockID"
    hash_key_type       = "S"
  }
}