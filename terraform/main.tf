variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_tag" "consul" {
  name = "consul"
}

resource "digitalocean_droplet" "node0" {
  image              = "centos-7-x64"
  name               = "node0"
  region             = "lon1"
  size               = "2gb"
  tags               = ["${digitalocean_tag.consul.id}"]
  ssh_keys           = [20167863]
  private_networking = true
}

resource "digitalocean_droplet" "node1" {
  image              = "centos-7-x64"
  name               = "node1"
  region             = "lon1"
  size               = "2gb"
  tags               = ["${digitalocean_tag.consul.id}"]
  ssh_keys           = [20167863]
  private_networking = true
}

resource "digitalocean_droplet" "node2" {
  image              = "centos-7-x64"
  name               = "node2"
  region             = "lon1"
  size               = "2gb"
  tags               = ["${digitalocean_tag.consul.id}"]
  ssh_keys           = [20167863]
  private_networking = true
}
