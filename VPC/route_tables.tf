resource "aws_route_table" "my_test_subnet_route_table" {
  vpc_id = "${aws_vpc.my_test_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.my_test_internet_gateway.id}"
  }

  tags {
    Name = "my_test_vpc-subnet_route_table"
  }
}

resource "aws_route_table_association" "subnet" {
  subnet_id      = "${aws_subnet.my_test_subnet.id}"
  route_table_id = "${aws_route_table.my_test_subnet_route_table.id}"
}