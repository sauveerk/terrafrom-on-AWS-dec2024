terraform { 
  cloud { 
    
    organization = "Terraform-Training-sd78kl" 

    workspaces { 
      name = "dev-workspace" 
    } 
  } 
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0fd05997b4dff7aac"
  instance_type = "t3.nano"

  tags = {
    Name = "SauveerTFCloud"
  }
}
