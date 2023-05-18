resource "aws_instance" "web-server" {
  ami = ami-0a695f0d95cefc163
  instance_type = "t2.micro"
  key_name = "ansible"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
