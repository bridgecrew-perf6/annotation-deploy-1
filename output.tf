# output "sshcommand" {
#    value = "ssh -i ${module.ssh.public_key} ubuntu@${module.vsi.floating_ip}"
# }
output "sshcommand" {
   value = "ssh ubuntu@${module.vsi.floating_ip}"
}