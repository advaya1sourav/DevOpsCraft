output "vpc1_id" {
  value = aws_vpc.vpc1.id
}

output "vpc2_cidr" {
  value = aws_vpc.vpc1.cidr_block
}

output "priv_sub_1" {

  value = aws_subnet.priv_sub_1.id

  
}

output "priv_sub_2" {

  value = aws_subnet.priv_sub_2.id

  
}


output "pub_sub_1" {

  value = aws_subnet.pub_sub_1.id

  
}
