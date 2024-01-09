#output "instance_info" {
#    value = aws_instance.web
#}

output "instnce_id" {
  value = aws_instance.web.id #instnce_id = "i-05d9cb774021202bf"
}

output "private_ip" {
  value = aws_instance.web.private_ip #private_ip = "172.31.36.161"
}

output "public_ip" {
  value = aws_instance.web.public_ip #public_ip = "18.232.97.137"
}


