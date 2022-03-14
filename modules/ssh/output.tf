# output "ssh_keypair" {
#   value = tls_private_key.key.private_key_pem
# }
output "key_name" {
  value = ibm_is_ssh_key.iac_shared_ssh_key.name
}
output "id" {
  value = ibm_is_ssh_key.iac_shared_ssh_key.id
}
output "ibm_cloud_url" {
  value = ibm_is_ssh_key.iac_shared_ssh_key.resource_controller_url
}
output "public_key" {
    value = var.public_key_file
}