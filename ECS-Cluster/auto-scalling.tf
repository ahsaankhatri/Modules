resource "aws_autoscaling_group" "ecs-autoScalling" {
    name                      = "ecs-autoScalling"
    vpc_zone_identifier       = [aws_subnet.subnet.id]
    launch_configuration      = aws_launch_configuration.myec2.id

    desired_capacity          = var.ecs_capicity
    min_size                  = var.instance_max_size
    max_size                  = var.instance_min_size
    health_check_grace_period = 300
    health_check_type         = "EC2"
}