# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "source_vm_id" {
  description = "Specifies the ID of the VM to backup. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "backup_policy_id" {
  description = "Specifies the id of the backup policy to use. Required in creation or when 'protection_stopped' is not specified."
  type        = string
  default     = null
}
variable "exclude_disk_luns" {
  description = "A list of Disks' Logical Unit Numbers(LUN) to be excluded for VM Protection."
  type        = list(any)
  default     = []
}
variable "include_disk_luns" {
  description = "A list of Disks' Logical Unit Numbers(LUN) to be included for VM Protection."
  type        = list(any)
  default     = []
}
variable "protection_state" {
  description = "Specifies Protection state of the backup. Possible values are 'Invalid', 'IRPending', 'Protected', 'ProtectionStopped', 'ProtectionError' and 'ProtectionPaused'."
  type        = string
  default     = null
}
