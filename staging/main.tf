terraform {
  backend "s3" {
    bucket = "staging-testnew"
    key = "staging.tfstate"
    region = "us-west-1"
  }
}

module "vpc" {
  source = "github.com/JD06/terraform-module-vpc.git"
  infra_env = "staging"
  name = "mystaging"
  vpc_cidr = "10.0.0.0/16"
}
