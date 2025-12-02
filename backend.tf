terraform {
  backend "s3" {
    bucket         = "${var.my_enviroment}-test-my-app-bucket-d"
    key            = "eks/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock-eks"
    encrypt        = true
  }
}
