
terraform {
  required_version = "1.9.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

# Using remote backend
terraform {
  backend "s3" {
    bucket = "my-backend-devops101-terraform"
    key    = "flaskappawsec2/tfstate"
    region = "us-west-1"
  }
}

