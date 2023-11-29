# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Disk Encryption Set. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_key_id" {
  description = "(REQUIRED) Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret)."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of Managed Service Identity that is configured on this Disk Encryption Set. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set.



# OPTIONAL VARIABLES

variable "auto_key_rotation_enabled" {
  description = "Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are 'true' or 'false'. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "encryption_type" {
  description = "The type of key used to encrypt the data of the disk. Possible values are 'EncryptionAtRestWithCustomerKey', 'EncryptionAtRestWithPlatformAndCustomerKeys' and 'ConfidentialVmEncryptedWithCustomerKey'. Defaults to 'EncryptionAtRestWithCustomerKey'. Changing this forces a new resource to be created."
  type        = string
  default     = "EncryptionAtRestWithCustomerKey"
}
variable "federated_client_id" {
  description = "Multi-tenant application client id to access key vault in a different tenant."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Disk Encryption Set."
  type        = map(any)
  default     = null
}
