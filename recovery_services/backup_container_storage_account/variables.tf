# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group where the vault is located. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) The name of the vault where the storage account will be registered. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account to be registered Changing this forces a new resource to be created."
  type        = string

}
