resource "aws_instance" "db_server" {
    ami = data.aws_ami.aws_ec2.id
    instance_type = "t2.micro"

    tags = {
        Name = "My_db_server"
    }
}

output "PrivateIP" {
    value = aws_instance.db_server.private_ip
}