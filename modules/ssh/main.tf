# resource "tls_private_key" "key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }
# resource "local_file" "private_key" {
#   filename          = "${var.ssh_key_name}.pem"
#   sensitive_content = tls_private_key.key.private_key_pem
#   file_permission   = "0400"
# }

locals {
  public_key = file(pathexpand(var.public_key_file))
}
resource "ibm_is_ssh_key" "iac_shared_ssh_key" {
  name = var.ssh_key_name
  resource_group = var.resource_group
  public_key = local.public_key
#   public_key = tls_private_key.key.public_key_openssh
}