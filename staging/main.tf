provider "aws" {
  region = "us-west-1"
}

module "vpc" {
  source = "../modules/vpc"
  infra_env = "staging"
  name = "mystaging"
  vpc_cidr = "10.0.0.0/16"
}
