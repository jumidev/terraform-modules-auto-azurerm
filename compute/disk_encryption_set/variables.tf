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
  description = "(REQUIRED) Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). -> **NOTE** Access to the KeyVault must be granted for this Disk Encryption Set, if you want to further use this Disk Encryption Set in a Managed Disk or Virtual Machine, or Virtual Machine Scale Set. For instructions, please refer to the doc of [Server side encryption of Azure managed disks](https://docs.microsoft.com/azure/virtual-machines/linux/disk-encryption). -> **NOTE** A KeyVault using [enable_rbac_authorization](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enable_rbac_authorization) requires to use 'azurerm_role_assignment' to assigne the role 'Key Vault Crypto Service Encryption User' to this Disk Encryption Set. In this case, 'azurerm_key_vault_access_policy' is not needed."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of Managed Service Identity that is configured on this Disk Encryption Set. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'.



# OPTIONAL VARIABLES

variable "auto_key_rotation_enabled" {
  description = "Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are 'true' or 'false'. Defaults to 'false'. -> **NOTE** When 'auto_key_rotation_enabled' is set to 'true' the 'key_vault_key_id' must use the 'versionless_id'. -> **NOTE** To validate which Key Vault Key version is currently being used by the service it is recommended that you use the 'azurerm_disk_encryption_set' data source or run a 'terraform refresh' command and check the value of the exported 'key_vault_key_url' field. -> **NOTE** It may take between 10 to 20 minutes for the service to update the Key Vault Key URL once the keys have been rotated."
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
