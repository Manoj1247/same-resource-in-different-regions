terraform {
  required_version = ">= 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.1.15"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
  alias   = "us-east"
}

provider "aws" {
  region  = "us-west-1"
  alias   = "us-west"
}