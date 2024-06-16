resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zoneid
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  #name = local.record_name
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  #records = local.record_value
  allow_overwrite = true
}