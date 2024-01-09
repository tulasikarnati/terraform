resource "aws_security_group" "roboshop-all" {
  name        = "dynamic_demo"
  description = "dynamic_demo"


  dynamic ingress {
    for_each = var.ingress_rules
    content {
      description      = ingress.value["description"]
        from_port        = ingress.value["from_port"]
        to_port          = ingress.value["to_port"]
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["cidr_blocks"]
    }
  }
#using dynamic block to avoid block repetition in resource
#   ingress {
#     description      = "allow port 80"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#    ingress {
#     description      = "allow port 443"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#    ingress {
#     description      = "allow port 22"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "dynamic_demo"
  }
}