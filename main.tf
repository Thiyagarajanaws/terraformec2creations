terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0d27e0fb3bac4d724"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}