resource "aws_instance" "expense"{
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0d639f0fbbb9a40c3"]
    instance_type = "t2.micro"

    tags = {
        default = {
            name = sreee
        }
    }

    provisioner "local_exec"{
        command = "echo ${self.private_ip} > private_ips.txt"
    }

    #provisioner "local_exec"{
     #   command = "ansible-playbook -i private_ips.txt web.yaml"
    #}

    connection{
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = self.public_ip
    }

    provisioner "remote_exec"{
        inline = [
            "sudo dnf install ansible -y",
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx"
        ]
        
    }
}
