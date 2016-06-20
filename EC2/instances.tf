resource "aws_instance" "my_test_instance" {
  ami                         = "ami-0ae77879"
  availability_zone           = "eu-west-1a"
  instance_type               = "t2.micro"
  key_name                    = "codurance"
  vpc_security_group_ids      = ["sg-38dc5b5d"]
  subnet_id                   = "subnet-42975e35"
  associate_public_ip_address = false
  source_dest_check           = true

  tags {
    Name = "my_test_instance"
  }
}