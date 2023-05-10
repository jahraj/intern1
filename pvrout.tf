resource "aws_route_table" "pvrout" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "pvrout"
  }
}
