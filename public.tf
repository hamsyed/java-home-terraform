
locals {
  az_names = "${data.aws_availability_zones.azs.names}"
}

resource "aws_subnet" "main" {
  count = "${length(local.az_names)}"
  vpc_id     = aws_vpc.hameedmain.id
  cidr_block = "${cidrsubnet("${var.vpc-cidr}", 8, count.index)}"
  availability_zone = "${local.az_names[count.index]}"
  tags = {
    Name = "PublicSubnet-${count.index + 1}"
  }
}
