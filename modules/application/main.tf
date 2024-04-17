terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [ aws.src, aws.dst ]
    }
  }
}


module "storage_east"{
    source = "../storage"
    name_prefix = "us-east-"
    providers = {
        aws = aws.src
    }
}

module "storage_west"{
    source = "../storage"
    name_prefix = "us-west-"
    providers = {
        aws = aws.dst
    }
}