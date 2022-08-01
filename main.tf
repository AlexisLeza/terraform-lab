provider "aws" {
  region = "us-east-1"
}

 

resource "aws_instance" "example" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "cloud-labs"
  monitoring = true
    user_data = <<-EOF
              #!/bin/bash
              sudo service apache2 start
              EOF
  tags = {
    Name = "terraform-example"
  }
}