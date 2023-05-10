resource "aws_lb" "januu" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.janujah.id]
  subnets            = [aws_subnet.pub1.id, aws_subnet.pub2.id]
}
