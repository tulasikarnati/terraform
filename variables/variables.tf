variable "ami-id" {
    type = string
    default = "ami-03265a0778a880afb"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "tags" {
  type = map
  default = {
    name = "Hello Terraform"
    project = "roboshop"
    component = "web"
    environment = "DEV"
    terraform = true
  }
}