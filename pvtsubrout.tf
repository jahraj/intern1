resource "aws_route_table_association" "pvtroute" {
  subnet_id      = aws_subnet.pvt1.id
  route_table_id = aws_route_table.pvrout.id
}
resource "aws_route_table_association" "pvt-route" {
  subnet_id      = aws_subnet.pvt2.id
  route_table_id = aws_route_table.pvrout.id
}
