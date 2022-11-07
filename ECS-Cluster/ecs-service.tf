resource "aws_ecs_service" "ECS-taskService" {
  name            = "ECS-taskService"
  cluster         = aws_ecs_cluster.ECS.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  desired_count   = 2
}