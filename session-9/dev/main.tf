module "ec2" {
    source = "../../modules/ec2"
    ami = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"
    env = "dev"
    bucket_name = module.s3.s3_name  #!!!reference to output 
}

module "s3" {
    source = "../../modules/s3"
    env = "dev"
}