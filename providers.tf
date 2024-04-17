provider "aws" {
  alias  = "us_east"  
  region  = "us-east-1" #Default
}

provider "aws" {
  region  = "us-west-1"
  alias   = "us_west"
}