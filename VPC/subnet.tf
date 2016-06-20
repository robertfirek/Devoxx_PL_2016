resource "aws_subnet" "my_test_subnet" {
  vpc_id            = "${aws_vpc.my_test_vpc.id}"
  cidr_block        = "10.1.0.0/24"
  availability_zone = "eu-west-1a"

  tags {
    Name = "my_test_vpc-subnet"
  }
}