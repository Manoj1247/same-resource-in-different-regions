module "storage_east"{
    source = "./modules/storage"
    name_prefix = "us-east-"
    providers = {
        aws = aws.us-east
    }
}

module "storage_west"{
    source = "./modules/storage"
    name_prefix = "us-west-"
    providers = {
        aws = aws.us-west 
    }
}