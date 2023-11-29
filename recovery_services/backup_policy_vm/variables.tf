# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Backup Policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the policy. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created."
  type        = string

}
