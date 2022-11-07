terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_launch_configuration" "myec2" {
  name = "${var.instance_name}"
  image_id           = "${var.image_id}"
  instance_type = "${var.instance_type}"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_instanceProfile.name}"
  security_groups = [ "${aws_security_group.security_group.id}" ]
  user_data            = "#!/bin/bash\necho ECS_CLUSTER=ECS >> /etc/ecs/ecs.config"
}

resource "aws_iam_instance_profile" "ec2_instanceProfile" {
    name = "ec2_instanceProfile"
    role = "${aws_iam_role.my_role.id}"
}