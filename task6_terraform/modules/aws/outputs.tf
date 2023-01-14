output "aws_public_ip" {
  value = aws_instance.ec2_tftask.public_ip
}