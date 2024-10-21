terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "tooling/terraform.state"
    bucket         = "jide-terraform-backend-bucket"
    region         = "eu-west-2"
    dynamodb_table = "terraform-state-locking"
  }
}
