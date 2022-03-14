variable "name" {
  default = "tf-ann"
}
variable "profile" {
  default = "bx2-2x8"
}
variable "volume_capacity" {
  default = "1000"
}
variable "region" {}
variable "zone" {}
variable "vpc" {}
variable "subnet" {}
variable "security_group" {}
variable "resource_group" {}
# variable "ssh_key_id" {}