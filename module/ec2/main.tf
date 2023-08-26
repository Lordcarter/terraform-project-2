resource "aws_instance" "myec2" {
  ami               = data.aws_ami.amazon_linux_2.id
  instance_type     = var.instance_type
  subnet_id = var.subnet_id

  tags = { 
    Name = "lordc ec2" 
    Environment = var.env
    }
}