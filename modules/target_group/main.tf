
# Local variables
locals {
  default_tags = merge(
    var.default_tags,
    { "Env" = var.env }
  )
  name_prefix = "${var.prefix}-${var.env}"
}

### Module to Create a AWS Load Balancer and a target group

# Target Group 
resource "aws_lb_target_group" "Group_Project_tg" {
  name        = "${local.name_prefix}-TargetGroup"
  port        = 80
  target_type = "instance"
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
   tags = merge(
    local.default_tags, {
      Name = "${local.name_prefix}-TargetGroup"
    }
  )
  
} 



