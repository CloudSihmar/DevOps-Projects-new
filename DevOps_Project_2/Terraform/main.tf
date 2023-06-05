data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.amazon-linux.id
  instance_type = "t2.micro"
  key_name = "ansible_key"

  tags = {
    Env = "test"
    Name = "${var.name}-server"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "ansible_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+oKz4mC2XytKp3P1zy1o5zHuILUMwqZlejBNpxzEgW5f27Eq772QGJfH8v/XqenzRZkxgWPYCiED3DgNdhlbl8cjPpPYvYzeG0Tr6YepggOOmsBLH3O3Kjz13iprUSUbhpgIq7HZhB+GFuUC3/oHUmHSuRloS2Ktt8DJk2+V05sPU/WkQlw66Ir8amxHuK72Eb0Rt4y4XZSYoUjZ6EgK/PUmdlXCaIxi6lZ1FGZ1JRhlMMIP2ZmDqH2I7XhaJRXCp32fmjTEleeZHFDzmfXzJVSPAouYxlNXHfRrvibgwnHa9YlU74ePX2tMQAMDXiyfk/8cXuL5qRfpOG/OFZ5xfNV7CMk6hBOzpCo5JBYVugI/DpD3jJvLB1ooQlZ4WuCWIfo6QawYaVl2mWIi/OMwJcf309Zi1BRZuuMbxtrwRfB/7xlngs4CPFyFaAWV2bFCTPzTtOB2bDxb3raBtIyUIkEXKGrMw/PAcoJYTYfwG1r0UNS1ddnkaUFY4cItb4Wk= ubuntu"
}
