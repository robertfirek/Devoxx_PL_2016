resource "aws_vpc" "my_test_vpc" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "my_test_vpc"
  }
}

resource "aws_internet_gateway" "my_test_internet_gateway" {
  vpc_id = "${aws_vpc.my_test_vpc.id}"

  tags {
    Name = "my_test_vpc-internet_gateway"
  }
}