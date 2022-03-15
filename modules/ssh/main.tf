# resource "tls_private_key" "key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }
# resource "local_file" "private_key" {
#   filename          = "${path.module}/.ssh/id_rsa"
#   sensitive_content = tls_private_key.key.private_key_pem
#   file_permission   = "0400"
# }

locals {
  public_key = file(pathexpand("${path.module}/.ssh/id_rsa.pub"))
}
resource "ibm_is_ssh_key" "iac_shared_ssh_key" {
  name = "tf-ssh"
  resource_group = var.resource_group
  public_key = local.public_key
#   public_key = tls_private_key.key.public_key_openssh
}