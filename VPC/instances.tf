resource "aws_instance" "my_test_instance" {
  ami                         = "ami-0ae77879"
  availability_zone           = "eu-west-1a"
  instance_type               = "t2.micro"
  key_name                    = "codurance"
  vpc_security_group_ids      = ["${aws_security_group.security_group.id}"]
  subnet_id                   = "${aws_subnet.my_test_subnet.id}"
  associate_public_ip_address = true
  source_dest_check           = true

  tags {
    Name = "my_test_vpc-instance"
  }
}