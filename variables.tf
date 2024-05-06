variable "project" {
    type = string
    default = "myproject"  // Add your project name
  
}

variable "environmnet" {
    type = string
    default = "dev"  // Add your environmnet name
  
}

variable "vpc_cidr" {
    type = string
    default = "172.16.0.0/16" // Add your VPC CIDR range
}



variable "pub_sub_1_cidr" {
    type = string
    default = "172.16.1.0/24" // Add your public subnet 1 CIDR range
  
}

variable "pub_sub_2_cidr" {
    type = string
    default = "172.16.2.0/24" // Add your public subnet 2 CIDR range
  
}





variable "priv_sub_1_cidr" {
    type = string
    default = "172.16.3.0/24" // Add your private subnet 2 CIDR range
  
}

variable "priv_sub_2_cidr" {
    type = string
    default = "172.16.4.0/24" // Add your private subnet 2 CIDR range
  
}


