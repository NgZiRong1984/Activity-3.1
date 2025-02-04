locals {
  name_prefix = "zirong"
}



## EC2 Instance
resource "aws_instance" "ec2" {
  ami                    = "ami-04c913012f8977029"
  instance_type          = "t2.micro"
  subnet_id              = data.aws_subnets.public.ids[0]
  vpc_security_group_ids = [aws_security_group.ec2.id]
  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.profile_dynamodb.id

  tags = {
    Name = "${local.name_prefix}-ec2"
  }
}