variable "infra_env" {
  type = string
  description = "Infrastructure Environment"
}

variable "vpc_cidr" {
  type = string
  description = "The IP range to use for VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet" {
  type = map(number)
  description = "Map of AZ to a number that should be used for public subnet"
  default = {
    "public-2a" = 1
    "public-2b" = 2
    "public-2c" = 3
  }
}

variable "private_subnet" {
  type = map(number)
  description = "Map of AZ to a number that should be used for public subnet"
  default = {
    "private-2a" = 4
    "private-2b" = 5
    "private-2c" = 6
  }
}