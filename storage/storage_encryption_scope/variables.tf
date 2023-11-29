# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created."
  type        = string

}
variable "source" {
  description = "(REQUIRED) The source of the Storage Encryption Scope. Possible values are 'Microsoft.KeyVault' and 'Microsoft.Storage'."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "infrastructure_encryption_required" {
  description = "Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "key_vault_key_id" {
  description = "The ID of the Key Vault Key. Required when 'source' is 'Microsoft.KeyVault'."
  type        = string
  default     = null
}
