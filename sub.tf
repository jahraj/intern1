resource "aws_subnet" "pub1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.0.0/25"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "pub1"
  }
}
resource "aws_subnet" "pub2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "pub2"
  }
}
resource "aws_subnet" "pvt1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pvt1"
  }
}
resource "aws_subnet" "pvt2" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "10.0.80.0/20"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pvt2"
  }
}
