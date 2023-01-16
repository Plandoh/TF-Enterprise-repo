resource "aws_vpc" "vpc_test" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_test
  }
}

resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidr)
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = var.subnet_cidr[count.index]
  availability_zone = "us-east-2"
}
