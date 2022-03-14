variable "region" {}
variable "resource_group" {}
variable "ssh_key_name" {
  default = "tf-ssh"
}
variable "public_key_file"  {
  default = "ssh_keypair/id_rsa.pub"
}