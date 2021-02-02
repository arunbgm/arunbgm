provider "aws" {
 region = "us-east-2"
 assume_role {
   role_arn = "arn:aws:iam::568779278260:role/demo-role"
 }
}
terraform {
  backend "s3" {
    bucket         = "terraform-demo-02-02-2021"
    key            = "terraform/some_state"
    region         = "us-east-2"
    role_arn = "arn:aws:iam::568779278260:role/demo-role"

  }
}

