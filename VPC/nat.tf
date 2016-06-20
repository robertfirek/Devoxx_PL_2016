resource "aws_eip" "my_test_nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "my_test_nat" {
  allocation_id = "${aws_eip.my_test_nat_eip.id}"
  subnet_id = "${aws_subnet.my_test_subnet.id}"

  depends_on = ["aws_internet_gateway.my_test_internet_gateway"]
}