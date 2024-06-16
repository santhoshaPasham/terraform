resource "aws_instance" "db" {
  ami                     = "ami-031d574cddc5bb371"
  tags = {
    Name = "db"
  }
  instance_type           = "t2.micro"
  vpc_security_group_ids = ["sg-0b1118529e0d777dc"]
}