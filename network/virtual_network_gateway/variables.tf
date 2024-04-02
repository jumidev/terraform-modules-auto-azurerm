# REQUIRED VARIABLES

variable "ip_configuration" {
  description = "(REQUIRED) One or more (up to 3) 'ip_configuration' blocks documented below. An active-standby gateway requires exactly one 'ip_configuration' block, an active-active gateway requires exactly two 'ip_configuration' blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three 'ip_configuration' blocks."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the Virtual Network Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created."
  type        = string

}
