variable "instance_names" {
  type = map
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    catalogue = "t2.micro"
    user = "t2.micro"
    cart = "t2.micro"
    payment = "t2.micro"
    dispatch = "t2.micro"
    rabbitmq = "t2.micro"
    mysql = "t3.small"
    shipping = "t3.small"
    web = "t2.micro"
    }
}

variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "zone_id" {
  type = string
  default = "Z089352026K92YH7XVJIF"
}

variable "domain_name" {
  type = string
  default = "daws94t.online"
}


