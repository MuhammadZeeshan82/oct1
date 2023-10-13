terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "eu-west-2"
}
data "aws_ami" "dev_ami" {
  most_recent = true
  filter {
    name   = "tag:Env"
    values = ["dev"]
  }

}