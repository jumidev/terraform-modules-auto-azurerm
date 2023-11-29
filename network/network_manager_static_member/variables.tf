# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created."
  type        = string

}
variable "network_group_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created."
  type        = string

}
variable "target_virtual_network_id" {
  description = "(REQUIRED) Specifies the Resource ID of the Virtual Network using as the Static Member. Changing this forces a new Network Manager Static Member to be created."
  type        = string

}
