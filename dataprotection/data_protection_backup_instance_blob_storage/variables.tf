# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created."
  type        = string

}
variable "vault_id" {
  description = "(REQUIRED) The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created."
  type        = string

}
variable "backup_policy_id" {
  description = "(REQUIRED) The ID of the Backup Policy."
  type        = string

}
