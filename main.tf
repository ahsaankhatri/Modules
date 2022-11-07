module "ECS-Cluster" {
    source = "./ECS-Cluster"
    instance_name = var.instance_name
    image_id       = var.image_id
    instance_type = var.instance_type
    username = var.username
    group_name = var.group_name
    cidr_block = var.cidr_block
}