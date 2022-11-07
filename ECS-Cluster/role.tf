data "aws_iam_policy_document" "ecs_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "my_role" {
  name = "my_role"
  assume_role_policy = data.aws_iam_policy_document.ecs_role.json
}

resource "aws_iam_role_policy_attachment" "ecs_role-policy" {
  role       = aws_iam_role.my_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}