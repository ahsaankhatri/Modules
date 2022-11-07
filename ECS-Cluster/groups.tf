resource "aws_iam_group" "group_name" {
  name = var.group_name
}

resource "aws_iam_group_membership" "iam_group_members" {
  name = "iam_group_members"
  users = [
    aws_iam_user.IAM_User.name
   ]
   group = aws_iam_group.group_name.name
}