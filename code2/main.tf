resource "aws_lightsail_instance" "l1" {
  name              = "myserver"
  availability_zone = "us-east-1ba"
  blueprint_id      = "amazon_linux_2"
  key_pair_name     = "week5keypair"
  user_data         = file("setup.sh")
  bundle_id         = "nano_3_0_1"
  tags = {
    env  = "dev"
    team = "devops"
  }
}

