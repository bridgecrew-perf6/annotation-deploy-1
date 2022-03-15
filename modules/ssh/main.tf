locals {
  # public_key = file(pathexpand(var.ssh_key_public_file))
  public_key = file(pathexpand(".ssh/id_rsa.pub"))
}
resource "ibm_is_ssh_key" "ssh_public_key" {
  # lifecycle {
  #   prevent_destroy = true
  #   ignore_changes = [ public_key ]
  # }
  name = var.ssh_key_name
  resource_group = var.resource_group
  public_key = local.public_key
}