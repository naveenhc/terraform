# resource "aws_eip" "lb" {
#   vpc =  true
# }

# output "eip" {
#   value = aws_eip.lb.public_ip
# }

# resource "aws_instance" "myec2" {
#   ami = "ami-0230bd60aa48260c6"
#   instance_type = "t2.micro"
# }

# resource "aws_eip_association" "eip_assoc" {
#   instance_id = aws_instance.myec2.id
#   allocation_id = aws_eip.lb.id
# }