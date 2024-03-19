terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.41.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "5.0"
}

resource "aws_instance" "Ec2_instance" {
    ami = "ami-0d7a109bf30624c99"
    instance_type = "t2.micro"
}

# comments
