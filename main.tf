module "application" {
  source = "./modules/application"
  providers = {
    aws.src = aws.us_east,
    aws.dst = aws.us_west
  }
}
