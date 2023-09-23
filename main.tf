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