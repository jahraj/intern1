resource "aws_lb_target_group" "target" {
  name     = "target"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my-vpc.id
}
resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.target.arn
  target_id        = aws_instance.rajase.id
  depends_on       = [aws_instance.rajase]
  port             = 80
}
resource "aws_lb_target_group_attachment" "test1" {
  target_group_arn = aws_lb_target_group.target.arn
  target_id        = aws_instance.rajasek.id
  port             = 80
  depends_on       = [aws_instance.rajasek]
}
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.januu.arn
  port              = "80"
  protocol          = "HTTP"
  #ssl_policy        = "ELBSecurityPolicy-2016-08"
  #certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target.arn
  }
}
