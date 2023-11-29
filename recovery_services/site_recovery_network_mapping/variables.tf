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
variable "source_recovery_fabric_name" {
  description = "(REQUIRED) Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "target_recovery_fabric_name" {
  description = "(REQUIRED) The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created."
  type        = string

}
variable "source_network_id" {
  description = "(REQUIRED) The id of the primary network. Changing this forces a new resource to be created."
  type        = string

}
variable "target_network_id" {
  description = "(REQUIRED) The id of the recovery network. Changing this forces a new resource to be created."
  type        = string

}
