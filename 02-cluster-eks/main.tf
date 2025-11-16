terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "dvn-workshop-remote-backend"
    key            = "eks/terraform.state"
    region         = "us-east-1"
    # dynamodb_table = "dvn-workshop-state-lock"
    use_lockfile = true
  }
}

provider "aws" {
  profile = "oest"
  region  = var.assume_role.region

  assume_role {
    role_arn = var.assume_role.arn
  }

  default_tags {
    tags = var.tags
  }
}
