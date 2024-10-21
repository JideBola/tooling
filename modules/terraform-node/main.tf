resource "aws_instance" "terraform_node" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids      = [var.security_group_id]
  user_data     = file("${path.module}/terraform.sh")

  tags = {
    Name = "terraform-node"
  }
}