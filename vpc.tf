resource "aws_vpc" "hameedmain" {
  cidr_block       = "${var.vpc-cidr}"
  instance_tenancy = "default"
  enable_dns_hostnames = "true"

  tags = {
    Name = "Hmain"
    Env = "${terraform.workspace}" 
  }
}
