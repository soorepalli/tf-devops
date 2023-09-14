terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket = "tfpractise-aws"
    key = "state/tfpractise.tfstate"
    region = "es-east-1"
    encrypt = true
    dynamodb_table = "tfpractise"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


# Create a VPC
resource "aws_vpc" "project99" {
  cidr_block = "172.16.0.0/24"
}