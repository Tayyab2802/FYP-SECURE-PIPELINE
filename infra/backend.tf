terraform {
  backend "s3" {
    bucket         = "fyp-terraform-state-tk"
    key            = "fyp-secure-cicd/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}