terraform {
    backend "s3" {
        bucket = "terraform-session-september-remote-backend-1"
        key = "session-9/dev/terraform.tfstate"
        region = "us-east-1"
    }
}