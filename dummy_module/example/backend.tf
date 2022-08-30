terraform {
  backend "s3" {
    bucket         = "dk1999"
    key            = "new.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dk3008"
  }
}