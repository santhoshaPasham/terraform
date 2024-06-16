resource "aws_security_group" "allow_ssh" {
  name        = "allow_ports"
  description = "allowing 22,80,8080,3306 ports"
  dynamic "ingress" {
    for_each = var.inbound_rules
    content{
    from_port       = ingress.value["port"]
    to_port         = ingress.value["port"]
    protocol        = ingress.value["protocol"]
    cidr_blocks      = ingress.value["allowed_cidr"]
    }
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1" #all protocols
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


  tags = {
    Name = "allow_ssh"
    CreatedBy = "santhosha"
  }
}