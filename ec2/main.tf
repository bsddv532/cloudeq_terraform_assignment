resource "aws_instance" "deepak_demo_instance" {
  ami           = var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "Dk Demo training-3008"
  }
}



# Optional resource
resource "aws_ebs_volume" "deepak_volume" {
  count = var.check_status ? 1:0
  availability_zone = "us-east-1a"
  size              = var.demo_size

  tags = {
    Name = "HelloWorld"
  }
}