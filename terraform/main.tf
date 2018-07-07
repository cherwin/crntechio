variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_tag" "consul-cluster-0" {
  name = "consul-cluster-0"
}

resource "digitalocean_droplet" "node0" {
  image  = "centos-7-x64"
  name   = "node0"
  region = "lon1"
  size   = "512mb"
  tags   = ["${digitalocean_tag.consul-cluster-0.id}"]
}

resource "digitalocean_droplet" "node1" {
  image  = "centos-7-x64"
  name   = "node1"
  region = "lon1"
  size   = "512mb"
  tags   = ["${digitalocean_tag.consul-cluster-0.id}"]
}

resource "digitalocean_droplet" "node2" {
  image  = "centos-7-x64"
  name   = "node2"
  region = "lon1"
  size   = "512mb"
  tags   = ["${digitalocean_tag.consul-cluster-0.id}"]
}
