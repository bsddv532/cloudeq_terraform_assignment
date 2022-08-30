
module "aws_iam_users" {
  source         = "../../iam_users_group"
  demo_group     = var.group_name
  demo_usernames = ["deepak-demo-user1", "deepak-demo-user2", "deepak-demo-user3"]
}


module "my-bucket-module" {
  source      = "../../s3"
  bucket_name = var.demo_bucket_name
}

module "my_aws_instance" {
  source    = "../../ec2"
  ami1      = "ami-090fa75af13c156b4"
  demo_size = 30
}


