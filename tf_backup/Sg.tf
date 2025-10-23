resource "aws_security_group" "jenkins-sg" {
    name = "Jenkins-Security Group"
    description = "open Port 22,443,80,8080"
  


#We shall define a single ingress rule to allow trafic on all mentioned ports
dynamic "ingress" {
    for_each = var.ports
    content {
        description = "Ingress for ports ${ingress.value}"
        from_port  = ingress.value
        to_port = ingress.value
        protocol   = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

egress  {
    from_port =0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

}

tags ={
    Name = "Jenkines-sg"
     }
}

