# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) Sets the vault's SKU. Possible values include: 'Standard', 'RS0'."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Recovery Services Vault. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.


variable "public_network_access_enabled" {
  description = "Is it enabled to access the vault from public networks. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "immutability" {
  description = "Immutability Settings of vault, possible values include: 'Locked', 'Unlocked' and 'Disabled'."
  type        = string
  default     = null
}
variable "storage_mode_type" {
  description = "The storage type of the Recovery Services Vault. Possible values are 'GeoRedundant', 'LocallyRedundant' and 'ZoneRedundant'. Defaults to 'GeoRedundant'."
  type        = string
  default     = "GeoRedundant"
}
variable "cross_region_restore_enabled" {
  description = "Is cross region restore enabled for this Vault? Only can be 'true', when 'storage_mode_type' is 'GeoRedundant'. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "soft_delete_enabled" {
  description = "Is soft delete enable for this Vault? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "encryption" {
  description = "An 'encryption' block. Required with 'identity'."
  type        = map(any)
  default     = null
}
#
# encryption block structure              :
#   key_id (string)                         : (REQUIRED) The Key Vault key id used to encrypt this vault. Key managed by Vault Managed Hardware Security Module is also supported.
#   infrastructure_encryption_enabled (bool): (REQUIRED) Enabling/Disabling the Double Encryption state.
#   user_assigned_identity_id (string)      : Specifies the user assigned identity ID to be used.
#   use_system_assigned_identity (bool)     : Indicate that system assigned identity should be used or not. Defaults to 'true'.


variable "classic_vmware_replication_enabled" {
  description = "Whether to enable the Classic experience for VMware replication. If set to 'false' VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "monitoring" {
  description = "A 'monitoring' block."
  type        = map(any)
  default     = null
}
#
# monitoring block structure                           :
#   alerts_for_all_job_failures_enabled (bool)           : Enabling/Disabling built-in Azure Monitor alerts for security scenarios and job failure scenarios. Defaults to 'true'.
#   alerts_for_critical_operation_failures_enabled (bool): Enabling/Disabling alerts from the older (classic alerts) solution. Defaults to 'true'. More details could be found [here](https://learn.microsoft.com/en-us/azure/backup/monitoring-and-alerts-overview).


