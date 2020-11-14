provider "aws" {
  region = "eu-central-1"
}

module "terraform-state" {
  source = "github.com/quansight/qhub-terraform-modules//modules/aws/terraform-state"

  name = "qhub-testing-aws2"

  tags = {
    Organization = "qhub-testing-aws2"
    Project      = "terraform-state"
    Environment  = "dev"
  }
}

