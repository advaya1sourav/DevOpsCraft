output "vpc_id" {
  value = aws_vpc.vpc1.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc1.cidr_block
}

output "private_sub_1" {

  value = aws_subnet.priv_sub_1.id

  
}

output "private_sub_2" {

  value = aws_subnet.priv_sub_2.id

  
}


output "public_sub_1" {

  value = aws_subnet.pub_sub_1.id

  
}

output "public_sub_2" {

  value = aws_subnet.pub_sub_2.id

  
}
