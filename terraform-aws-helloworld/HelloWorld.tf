terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
  required_version = ">= 0.14.0"
  
}

provider "aws" {
  profile = "default"
  shared_credentials_file = "./.aws-credentials"
  region  = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}