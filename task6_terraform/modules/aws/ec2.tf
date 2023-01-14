resource "aws_instance" "ec2_tftask" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.aws_key_pair.key_name
  user_data              = file(var.grafana)
  vpc_security_group_ids = [aws_security_group.grafana_sg.id]
  tags                   = var.tags
}

resource "aws_key_pair" "aws_key_pair" {
  key_name   = var.key_name
  public_key = file(var.ssh_pub_key)
}
