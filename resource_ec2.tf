resource "aws_instance" "os2" {
  ami                    = var.amiID
  key_name               = "key_terraform"
  vpc_security_group_ids = ["sg-08fe95e566e102699"]
  instance_type          = "t2.micro"
  tags = {
    Name = var.osName
  }

}


resource "aws_ebs_volume" "myvol" {
  availability_zone = aws_instance.os2.availability_zone
  size              = 1
  tags = {
    Name = "MyWebVol"
  }
}


resource "aws_volume_attachment" "my_ebs_ec2" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.myvol.id
  instance_id = aws_instance.os2.id
}