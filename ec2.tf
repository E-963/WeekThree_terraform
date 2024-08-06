variable "ami" {
  description = "AMI ID for Ubuntu 24.04"
  type        = string
  default     = "ami-04a81a99f5ec58529"
}


resource "aws_instance" "ec2_instance" {
  ami           = var.ami  # Replace with your preferred AMI ID
  instance_type = "t2.micro"

  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

  tags = {
    Name = "EC2InstanceWithS3Access"
  }
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "ec2_instance_profile"
  role = aws_iam_role.ec2_role.name
}
