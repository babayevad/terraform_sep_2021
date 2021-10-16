terraform {
    backend "s3" {
        bucket = "terraform-session-september-remote-backend-1"
        key = "session-9/qa/terraform.tfstate"
        region = "us-east-1"
    }
}