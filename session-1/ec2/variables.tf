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