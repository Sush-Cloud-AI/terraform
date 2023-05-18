resource "aws_route53_record" "component" {
  zone_id = "Z05313022PGNHL8COSD1E"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 60
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}