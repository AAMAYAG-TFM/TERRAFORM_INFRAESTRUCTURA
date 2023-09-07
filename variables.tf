
variable "cidr_tfm" {
  description = "CIDR_TFM_OHIO"
  type        = string
}


/* variable "public_subnet" {
    description = "CIDR public subnet"
    type = string
  
}


variable "private_subnet" {
    description = "CIDR private subnet"
    type = string
  
} */

variable "subnets" {
  description = "Lista de Subnets"
  type        = list(string)
}

variable "tags" {
  description = "tags del proyecto"
  type        = map(string)
}