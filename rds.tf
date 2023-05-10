resource "aws_db_subnet_group" "rds" {
  name       = "db"
  subnet_ids = [aws_subnet.pvt1.id, aws_subnet.pvt2.id]

  tags = {
    Name = "My DB subnet group"
  }
}
resource "aws_db_instance" "rdss" {
  allocated_storage = 10
  db_name           = "db"
  engine            = "mysql"
  engine_version    = "8.0.23"
  instance_class    = "db.t2.micro"
  username          = "admin"
  password          = "admin123"
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
}
