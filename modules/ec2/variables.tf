variable "ami" {
    description = "EC2 AMI"
    type = string
}

variable "instance_type" {
    description = "Instance type of the EC2 instance"
    type = string
}

variable "names" {
    description = "Names for different resources"
    type = map(string)
    default = {
      "ec2" = "ec2-terraform-module-sandesh"
      "sg" = "module-sg-sandesh"
    }
}

variable "subnet_id" {
    description = "Subnet ID of the subnet where our instance will be created"
    type = string
}

variable "associate_public_ip" {
    description = "To give public IP to the instance or not"
    type = bool
    default = false
}

variable "vpc_id" {}

variable "iam_profile" {}
