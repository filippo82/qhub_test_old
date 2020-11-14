terraform {
  backend "s3" {
    bucket         = "qhub-testing-aws2-terraform-state"
    key            = "terraform/qhub-testing-aws2.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "qhub-testing-aws2-terraform-state-lock"
  }
}
