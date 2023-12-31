terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length           = 16
  special          = false
}
resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
output "random_bucket_name_id" {
  value = random_string.bucket_name.result
}
