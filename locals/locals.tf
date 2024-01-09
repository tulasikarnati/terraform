# locals {
#   name = "tulasi"
#   instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"

#   ip = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }
#count.index can't work in locals. we may get error if we run this.
#error like: 
#Error: Reference to "count" in non-counted context

locals {
  name = "tulasi"
  instance_type = var.isProd ? "t3.small" : "t2.micro"
}