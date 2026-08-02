terraform {
    required_providers {
        aws = {
            source = "hashicorp/awss"
            version = "5.98.0"
        }
    }

    backend "s3" {
        bucket = "ak-test-modules"
        key = "vpc_for_eks"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true
      
    }
}

provider "aws" {
    #Required configurations
    region = "us-east-1"
  
}