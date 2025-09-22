# terraform {
#   cloud {

#     organization = "subhro-personal-org"

#     workspaces {
#       name = "policy-sentinel-playground"
#     }
#   }
# }

provider "aws" {
  region  = "eu-north-1"
}

resource "aws_s3_bucket" "tf-test-bucket-1" {
  bucket = "tf-test-bucket-1"
}

