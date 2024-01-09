#1. command line variable input
#2. CLI with -var-file
#3. .tfvars
#4 environment variables
#5 still didn't get velue it will promt for value

variable "ami_id" {
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
    Name = "Hello Terraform"
    Project = "roboshop"
    Component = "web"
    Environment = "DEV"
    Terraform = true
  }
}

variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cidr-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}