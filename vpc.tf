
# Create a VPC
resource "aws_vpc" "vpc_tfm" {
  cidr_block = var.cidr_tfm
  tags = {
    Name = "VPC_TFM "
    Env  = "Dev"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_tfm.id
  cidr_block              = var.subnets[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_TFM"

  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_tfm.id
  cidr_block = var.subnets[1]
  tags = {
    Name = "private_subnet_TFM_1"
  }
}