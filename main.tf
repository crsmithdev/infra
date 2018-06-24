provider "digitalocean" {
  token = "e4646e09f49dd356018bee9a7a8edb15abc641543e3a8f8da345e739e1b51998"
}

resource "digitalocean_droplet" "dev" {
  count              = 1
  ssh_keys           = [21678815]
  image              = "ubuntu-16-04-x64"
  region             = "sfo2"
  size               = "s-1vcpu-1gb"
  private_networking = true
  backups            = true
  ipv6               = true
  name               = "test"
  user_data          = "${file("./userdata")}"
}
