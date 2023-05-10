output "lb_url" {
  description = "URL of load balancer"
  value       = aws_lb.januu.dns_name
}
