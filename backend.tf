terraform {
  backend "s3" {
    bucket = "hameesyed"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_type = "hameedterraformLock"
  }
}
