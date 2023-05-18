resource "aws_instance" "web-server" {
  ami = "ami-0a695f0d95cefc163"
  instance_type = "t2.micro"
  key_name = "ansible_key"

  tags = {
    Env = "test"
    Name = "${var.name}-server"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "ansible_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDlnxkv0VJT/MNniLviGBE7h3wLuyxRw0TMO8GCfHG5GJh1s13r0fp26dx2vEce6bGz6c3v9rlkKsbx/DtGlX75QflJuxcfzFrpKg0C05wRPsKdtpt0QQEVcziKA1j75TU33gvHbgtgKOxiZOzcTXsAayoWZbhn9gkH1r41DKRZ5d2+yPJO0kg3rmSdRpdflGz0SBiYYVraUa2NFMQJgfkdQ5/JK+OLeWttRDyBJnwhlSUM/QCfSWA3QlnpfHs+0jzwlJiOXQmG3SA5HqMeZZQLlLLVi3/lw4bx6PNSuSgvmxTJrzqdvyUjubuUOPceKQi9CVlWKx9xFiz64d7aaktPy/i+1ZrGvRP6vbex2BGgRFgeXA0yqi/xdmLmJ09LnjNdKBMD3sGOi6Bjuw0tGHt8o0cvmoJsLsSoqg5VIqbXNAIs0tEPqLJtPOWss8MebzLKGMU63Td6s3dKxKsLQGmn37ru/fbFrZtispR5nFCNSe+cDvm52JirdnKqnWkHk0M= root@terra"
}
