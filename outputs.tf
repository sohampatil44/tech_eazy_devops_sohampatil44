output "public_ip"{
    value = aws_instance.instance1.public_ip
}

output "public_dns"{
    value = aws_instance.instance1.public_dns
  
}