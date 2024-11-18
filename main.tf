terraform {
  // cloud {
  //   organization = "<MY_ORG_NAME>"         # 생성한 ORG 이름 지정
  //   hostname     = "app.terraform.io"      # default

  //   workspaces {
  //     name = "terraform-aws-collaboration" # 없으면 생성됨
  //   }
  // }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Project = "HCP Terraform"
    }
  }
}