resource "aws_instance" "web" {
  ami = "${data.aws_ami.ami_id.id}"
  instance_type               = "t2.micro"
  subnet_id                   = local.pub_subnet_ids[0]
  associate_public_ip_address = true
  key_name                    = "gitnewkey"
  user_data                   = file("./userdata.sh")
  tags = {
        Name = "myweb-tf-demo"
  }
}