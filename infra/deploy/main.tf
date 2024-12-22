terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket               = "recipe-tf-state"
    dynamodb_table       = "learning-recipe-tf-lock"
    encrypt              = true
    key                  = "tf-state-deploy"
    workspace_key_prefix = "tf-state-deploy-env"
    region               = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      "Owner"       = var.owner,
      "Environment" = terraform.workspace,
      "Project"     = var.project,
      "Contact"     = var.contact
      "ManagedBy"   = "Terraform/deploy"
    }
  }
}

locals {
  prefix = "${terraform.workspace}-${var.prefix}"
}

data "aws_region" "current" {}


