# Add output variable for the Traget Group ARN
output "TG_ARN" {
  value=aws_lb_target_group.Group_Project_tg.arn
}