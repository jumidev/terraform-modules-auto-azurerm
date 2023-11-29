# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created."
  type        = string

}
variable "vault_id" {
  description = "(REQUIRED) The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created."
  type        = string

}
variable "disk_id" {
  description = "(REQUIRED) The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created."
  type        = string

}
variable "snapshot_resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created."
  type        = string

}
variable "backup_policy_id" {
  description = "(REQUIRED) The ID of the Backup Policy."
  type        = string

}
