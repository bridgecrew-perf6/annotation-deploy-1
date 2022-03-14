output "name" {
  value = ibm_is_instance.vsi.name
}
output "profile" {
  value = ibm_is_instance.vsi.profile
}
output "floating_ip" {
  value = ibm_is_floating_ip.fip.address
}