variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "project_name" {
  type    = string
  default = "devops-lab"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "app_port" {
  type    = number
  default = 3000
}

variable "key_name" {
  type        = string
  description = "Existing EC2 Key Pair name in AWS"
  default = "devops-key"

}
