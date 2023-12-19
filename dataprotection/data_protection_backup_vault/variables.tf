# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created."
  type        = string

}
variable "datastore_type" {
  description = "(REQUIRED) Specifies the type of the data store. Possible values are 'ArchiveStore', 'OperationalStore', 'SnapshotStore' and 'VaultStore'. Changing this forces a new resource to be created."
  type        = string

}
variable "redundancy" {
  description = "(REQUIRED) Specifies the backup storage redundancy. Possible values are 'GeoRedundant' and 'LocallyRedundant'. Changing this forces a new Backup Vault to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Backup Vault. The only possible value is 'SystemAssigned'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Backup Vault."
  type        = map(any)
  default     = null
}
