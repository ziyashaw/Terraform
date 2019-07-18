resource "aws_instance" "my-nginx-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  key_name = "aws_terraform_key"
  tags = {
    Name = "nginx-instance"
  }
}
