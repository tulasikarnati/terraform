variable "instance_names" {
  type = list
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment","dispatch", "web"]
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