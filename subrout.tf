resource "aws_route_table_association" "route" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.rout-pub.id
}
resource "aws_route_table_association" "route1" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.rout-pub.id
}
