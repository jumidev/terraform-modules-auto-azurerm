# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created."
  type        = string

}
variable "public_key" {
  description = "(REQUIRED) SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the SSH Public Key."
  type        = map(any)
  default     = null
}
