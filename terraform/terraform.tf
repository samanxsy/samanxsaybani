# Terraform Configs
#
# Project: My Portfolio Terminal
#
# Author: Saman Saybani

terraform {
  cloud {
    organization = "samanxsaybani"
    workspaces {
      name = "portfolio_terminal"
    }
  }

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0.0"
    }
  }
}
