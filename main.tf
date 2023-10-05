terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    
    }
  }
    cloud {
    organization = "terraform-certpatryk"

    workspaces {
      name = "terra-house-1"
    }
  }
}

provider "aws" {
    region = "us-west-1"
    access_key = var.AWS_SECRET_ACCESS_KEY
    secret_key = var.AWS_ACCESS_KEY_ID
}


resource "random_string" "bucket_name" {
  length           = 32
  special          = false
  lower            = true
  upper            = false
}


output "random_bucket_name_result" {
    value = random_string.bucket_name.result
  
}


resource "aws_s3_bucket" "simple_s3_bucket" {
  bucket = random_string.bucket_name.result

}

