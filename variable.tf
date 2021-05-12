variable "region" {
  default = "us-east-1"
  description = "north verginia"
}

variable "vpc-cidr" {
  default = "10.20.0.0/16"
  description = "vpc cidr block"
}
variable "public-cidr" {
  default = "10.0.1.0/24"
}  
