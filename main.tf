terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# As regiões mais baratas são: Virgínia do Norte, Ohio e Oregon
# Regiões mais caras: São Paulo, Sidney e Hong Kong
#   US East (N. Virginia)	us-east-1
#   US West (N. California)	us-west-1
#   US West (Oregon)	us-west-2

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/ultimate/.aws/credentials"
  profile = "default"
}


data "aws_ami" "ubuntu" {  
  most_recent = true # Versao mais recente do ubuntu

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  owners = ["099720109477"] # id da canonical.
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "srv-web-nginx-saturno"
  }
}

/* 
Nome	      vCPUs   RAM (GiB)
  t2.micro    1	    1.0
  t2.small    1	    2.0
  t2.medium   2	    4,0
  t2.large    2	    8,0
  t2.xlarge   4	    16,0 
  https://aws.amazon.com/pt/ec2/instance-types/t2/
*/