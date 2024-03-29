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
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
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
    key    = "dev/key_terraform.tfstate"
    region = "eu-west-3"
  }
}
