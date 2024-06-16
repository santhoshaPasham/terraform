resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami                     = data.aws_ami.ami_id.id
  tags = merge(
    var.common_tags,
    {
    Name = each.key
    Module = each.key
    }
  )
  instance_type           = each.value
  vpc_security_group_ids = ["sg-0b1118529e0d777dc"]
}