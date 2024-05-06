resource "aws_vpc" "vpc1" {
    cidr_block = var.vpc1_cidr
    tags = {
      Name = join("-", [var.project,var.env,"vpc"])
    }
  
}

resource "aws_subnet" "pub_sub_1" {
    cidr_block = var.pub_sub_1_cidr
    availability_zone = "ap-south-1a"
    vpc_id = aws_vpc.vpc1.id
    tags = {
      Name = join("-", [var.project,var.env,"PublicSubnetA"])
    }
  
}


resource "aws_subnet" "pub_sub_2" {
    cidr_block = var.pub_sub_2_cidr
    availability_zone = "ap-south-1b"
    vpc_id = aws_vpc.vpc1.id
    tags = {
      Name = join("-", [var.project,var.env,"PublicSubnetB"])
        }
    }
  
resource "aws_subnet" "priv_sub_1" {
    cidr_block = var.priv_sub_1_cidr
    availability_zone = "ap-south-1a"
    vpc_id = aws_vpc.vpc1.id
    tags = {
      Name = join("-", [var.project,var.env,"PrivateSubnetA"])
    }
  
}


resource "aws_subnet" "priv_sub_2" {
    cidr_block = var.priv_sub_2_cidr
    availability_zone = "ap-south-1b"
    vpc_id = aws_vpc.vpc1.id
    tags = {
      Name = join("-", [var.project,var.env,"PrivateSubnetB"])
        }
    }
 

 resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc1.id
    tags = {
      Name = join("-", [var.project,var.env,"igw"])
        }    
   
 }


resource "aws_route_table" "public_rtb" {
  depends_on = [
    aws_internet_gateway.igw
  ]
  vpc_id = aws_vpc.vpc1.id

  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = join("-", [var.project,var.env,"public_rtb"])
      }    
  
}


resource "aws_eip" "Nat-Gateway-EIP" {
  vpc = true
  tags = {
    Name = join("-", [var.project,var.env,"Nat-Gateway-EIP"])
      }   
   
}
 

resource "aws_nat_gateway" "nat" {
  depends_on = [
    aws_eip.Nat-Gateway-EIP
  ]
  subnet_id = aws_subnet.pub_sub_1.id
  allocation_id = aws_eip.Nat-Gateway-EIP.id
  tags = {
    Name = join("-", [var.project,var.env,"Nat-Gateway"])
      } 
  
}

resource "aws_route_table" "private_rtb" {
  depends_on = [
    aws_nat_gateway.nat
  ]
  vpc_id = aws_vpc.vpc1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
      }
  tags = {
    Name = join("-", [var.project,var.env,"private_rtb"])
      }
}


resource "aws_route_table_association" "public1_rtb_association"{
  subnet_id = aws_subnet.pub_sub_1.id
  route_table_id = aws_route_table.public_rtb.id
}


resource "aws_route_table_association" "public2_rtb_association"{
  subnet_id = aws_subnet.pub_sub_2.id
  route_table_id = aws_route_table.public_rtb.id
}

resource "aws_route_table_association" "private1_rtb_association"{
  subnet_id = aws_subnet.priv_sub_1.id
  route_table_id = aws_route_table.private_rtb.id
}

resource "aws_route_table_association" "private2_rtb_association"{
  subnet_id = aws_subnet.priv_sub_2.id
  route_table_id = aws_route_table.private_rtb.id
}


