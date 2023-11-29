# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created."
  type        = string

}
variable "vault_id" {
  description = "(REQUIRED) The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created."
  type        = string

}
variable "retention_duration" {
  description = "(REQUIRED) Duration of deletion after given timespan. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy Blob Storage to be created."
  type        = string

}
