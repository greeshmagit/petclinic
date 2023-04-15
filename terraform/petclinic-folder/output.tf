output ami_id{
    value = aws_launch_configuration.alc.id
}
output "vpc_id"{
    value = aws_vpc.vpc.id
}
output target_group_arn{
    value = aws_lb_target_group.lb_tg.arn
}
output load_balancer_arn{
    value = aws_lb.alb.arn
}
output "aws_db_instance_id"{
    value = aws_db_instance.db_instance.id
}
output "aws_web_instance_id"{
    value = aws_instance.web.id
}
