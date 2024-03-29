################################
## CONFIGURATION AWS PRIVIDER ##
################################
terraform {
  required_version = ">= 1.0.2"
  required_providers {
    aws = {
      version = "~> 3.4"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

#########################
## CONFIG REMOTE STATE ##
#########################
terraform {
  required_version = ">= 1.0.2"
  backend "s3" {
    bucket = "terraform-devops-dev-paris"
    key    = "dev/vpc_terraform.tfstate"
    region = "eu-west-3"
  }
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}
