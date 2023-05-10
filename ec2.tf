resource "aws_instance" "rajase" {
  ami                    = "ami-02396cdd13e9a1257"
  availability_zone      = "us-east-1a"
  subnet_id              = aws_subnet.pub1.id
  instance_type          = "t2.micro"
  key_name               = "janujah"
  user_data              = file("httpd.sh")
  vpc_security_group_ids = [aws_security_group.janujah.id]
  tags = {
    name = "rajase"
  }
}
#2nd instance

resource "aws_instance" "rajasek" {
  ami                    = "ami-02396cdd13e9a1257"
  availability_zone      = "us-east-1b"
  subnet_id              = aws_subnet.pub2.id
  instance_type          = "t2.micro"
  key_name               = "janujah"
  user_data              = file("httpd.sh")
  vpc_security_group_ids = [aws_security_group.janujah.id]
  tags = {
    name = "rajasek"
  }
}
