# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created."
  type        = string

}
variable "source_storage_account_id" {
  description = "(REQUIRED) Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created."
  type        = string

}
variable "source_file_share_name" {
  description = "(REQUIRED) Specifies the name of the file share to backup. Changing this forces a new resource to be created."
  type        = string

}
variable "backup_policy_id" {
  description = "(REQUIRED) Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported."
  type        = string

}
