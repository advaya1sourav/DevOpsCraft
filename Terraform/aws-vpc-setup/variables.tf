variable "project" {
    type = string
    default = "myproject"
  
}

variable "env" {
    type = string
    default = "dev"
  
}

variable "vpc1_cidr" {
    type = string
    default = "10.0.0.0/24"
}



variable "pub_sub_1_cidr" {
    type = string
    default = "10.0.0.0/26"
  
}

variable "pub_sub_2_cidr" {
    type = string
    default = "10.0.0.64/26"
  
}





variable "priv_sub_1_cidr" {
    type = string
    default = "10.0.0.128/26"
  
}

variable "priv_sub_2_cidr" {
    type = string
    default = "10.0.0.192/26"
  
}


