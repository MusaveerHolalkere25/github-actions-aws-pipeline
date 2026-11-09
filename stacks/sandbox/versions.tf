terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0, < 7.0"
    }
  }

  # Partial configuration: the pipeline passes bucket, key, region and locking at init time.
  backend "s3" {}
}
