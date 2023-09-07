resource "aws_instance" "public_instance" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name
  tags = {
    Name = "web_services"
  }

}

