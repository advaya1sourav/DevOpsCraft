variable "project" {
    type = string
    default = "myproject"  // Add your project name
  
}

variable "env" {
    type = string
    default = "dev"  // Add your environmnet name
  
}

variable "vpc1_cidr" {
    type = string
    default = "10.0.0.0/24" // Add your VPC CIDR range
}



variable "pub_sub_1_cidr" {
    type = string
    default = "10.0.0.0/26" // Add your public subnet 1 CIDR range
  
}

variable "pub_sub_2_cidr" {
    type = string
    default = "10.0.0.64/26" // Add your public subnet 2 CIDR range
  
}





variable "priv_sub_1_cidr" {
    type = string
    default = "10.0.0.128/26" // Add your private subnet 2 CIDR range
  
}

variable "priv_sub_2_cidr" {
    type = string
    default = "10.0.0.192/26" // Add your private subnet 2 CIDR range
  
}


