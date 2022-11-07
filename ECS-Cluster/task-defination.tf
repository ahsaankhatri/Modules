resource "aws_ecs_task_definition" "task_definition" {
  family                = "ECS-task"
  container_definitions = file("${path.module}/task-defination.json")
}