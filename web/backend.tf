terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend-1"
    key            = "web/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_lock_state"
  }
}