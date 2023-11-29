# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the network mapping. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) The name of the vault that should be updated. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) In what region should the fabric be located. Changing this forces a new resource to be created."
  type        = string

}
