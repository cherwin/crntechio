variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "node0" {
  image  = "centos-7-x64"
  name   = "node0"
  region = "lon1"
  size   = "512mb"
}
