provider "aws" {
  region = "ap-southeast-1"  
}

resource "aws_instance" "wordpress_instance" {
  ami           = "ami-0fa377108253bf620"
  instance_type = "t2.micro"
  key_name      = "wordpress_server"

  tags = {
    Name = "wordpress-instance"
  }
}

output "wordpress_site_url" {
  value = "http://3.0.189.27/wordpress/"
}