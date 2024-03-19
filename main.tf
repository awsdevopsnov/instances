terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Ec2_instance" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "SPACEBUCKET" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
