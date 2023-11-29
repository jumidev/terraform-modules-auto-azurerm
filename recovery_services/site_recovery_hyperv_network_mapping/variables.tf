# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the HyperV network mapping. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_id" {
  description = "(REQUIRED) The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "source_system_center_virtual_machine_manager_name" {
  description = "(REQUIRED) Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created."
  type        = string

}
variable "source_network_name" {
  description = "(REQUIRED) The Name of the primary network. Changing this forces a new resource to be created."
  type        = string

}
variable "target_network_id" {
  description = "(REQUIRED) The id of the recovery network. Changing this forces a new resource to be created."
  type        = string

}
