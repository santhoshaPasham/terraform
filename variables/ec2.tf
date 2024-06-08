resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allowing SSH access"
  ingress {
    from_port       = var.ssh_port
    to_port         = var.ssh_port
    protocol        = var.protocol
    cidr_blocks      = var.allowed_cidr
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1" #all protocols
    cidr_blocks      = var.allowed_cidr
    
  }


  tags = {
    Name = "allow_ssh"
    CreatedBy = "santhosha"
  }
}

resource "aws_instance" "db" {
  ami                     = var.image_id
  tags = var.tags
  instance_type           = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}