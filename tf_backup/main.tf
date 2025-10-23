resource "aws_instance" "web" {
    ami = "ami-02d26659fd82cf299"
    instance_type = "t2.medium"
    key_name = "devsecops-keypair"
    vpc_security_group_ids = [aws_security_group.jenkins-sg.id]
    user_data = templatefile("${path.module}/install_jenkins.sh", {})

    tags = {
      Name = "Jenkins-sonar"
    }
    root_block_device {
        volume_size = 20 #Volume size
    }
    }

