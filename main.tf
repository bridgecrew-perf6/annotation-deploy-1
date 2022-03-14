# module "ssh" {
#   source = "./modules/ssh"
#   region = var.region
#   resource_group = var.resource_group
# }

module "vsi" {
  source = "./modules/vsi"
  region = var.region
  zone = var.zone
  vpc = var.vpc
  subnet = var.subnet
  security_group = var.security_group
  resource_group = var.resource_group
#   ssh_key_id = module.ssh.id
}