# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Snapshot resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "create_option" {
  description = "(REQUIRED) Indicates how the snapshot is to be created. Possible values are 'Copy' or 'Import'. ~> **Note:** One of 'source_uri', 'source_resource_id' or 'storage_account_id' must be specified."
  type        = string

}

# OPTIONAL VARIABLES

variable "source_uri" {
  description = "Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "source_resource_id" {
  description = "Specifies a reference to an existing snapshot, when 'create_option' is 'Copy'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "storage_account_id" {
  description = "Specifies the ID of an storage account. Used with 'source_uri' to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "disk_size_gb" {
  description = "The size of the Snapshotted Disk in GB."
  type        = number
  default     = null
}
variable "encryption_settings" {
  description = "A 'encryption_settings' block. ~> **NOTE:** Removing 'encryption_settings' forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# encryption_settings block structure:
#   disk_encryption_key (block)        : A 'disk_encryption_key' block.
#   key_encryption_key (block)         : A 'key_encryption_key' block.
#
# disk_encryption_key block structure:
#   secret_url (string)                : (REQUIRED) The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_secret' resource.
#   source_vault_id (string)           : (REQUIRED) The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource.
#
# key_encryption_key block structure:
#   key_url (string)                  : (REQUIRED) The URL to the Key Vault Key used as the Key Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_key' resource.
#   source_vault_id (string)          : (REQUIRED) The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource.


variable "incremental_enabled" {
  description = "Specifies if the Snapshot is incremental. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "network_access_policy" {
  description = "Policy for accessing the disk via network. Possible values are 'AllowAll', 'AllowPrivate', or 'DenyAll'. Defaults to 'AllowAll'."
  type        = string
  default     = "AllowAll"
}
variable "disk_access_id" {
  description = "Specifies the ID of the Disk Access which should be used for this Snapshot. This is used in conjunction with setting 'network_access_policy' to 'AllowPrivate'."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Policy for controlling export on the disk. Possible values are 'true' or 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
