data "ibm_is_image" "ubuntu" {
    name = "ibm-ubuntu-20-04-3-minimal-amd64-2"
}

resource "ibm_is_instance" "vsi" {
    name    = var.name
    resource_group = var.resource_group
    vpc     = var.vpc
    zone    = var.zone
    # keys    = [var.ssh_key_id]
    keys    = ["r006-93f8ced5-71d5-4540-887f-c560b7c66154"]
    image   = data.ibm_is_image.ubuntu.id
    profile = var.profile
    volumes = [ibm_is_volume.vol.id]

    primary_network_interface {
        subnet          = var.subnet
        security_groups = [var.security_group]
    }
}
resource "ibm_is_volume" "vol" {
  name     = "${var.name}-storage-${var.volume_capacity}gb"
  profile  = "general-purpose"
  # profile  = "10iops-tier"
  zone     = "us-south-2"
  capacity = var.volume_capacity
}
resource "ibm_is_floating_ip" "fip" {
  name   = var.name
  resource_group = var.resource_group
  target = ibm_is_instance.vsi.primary_network_interface[0].id
}