# To add users in a group
resource "aws_iam_group_membership" "deepak_demo_group_membership" {
  name = "deepak-tf-testing-group-membership"
  # users = var.demo_usernames
  users = [for i in aws_iam_user.demo_users : i.name]
  group = aws_iam_group.deepak_demo_group.name
}


# To create a group
resource "aws_iam_group" "deepak_demo_group" {
  name = var.demo_group
}


# To create a IAM user
resource "aws_iam_user" "demo_users" {
  count = length(var.demo_usernames)
  name  = var.demo_usernames[count.index]

  tags = {
    Name = "deepak-demo-user"
  }
}
