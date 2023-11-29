# REQUIRED VARIABLES

variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account. Changing this forces a new resource to be created."
  type        = string

}
variable "key_name" {
  description = "(REQUIRED) The name of Key Vault Key."
  type        = string

}

# OPTIONAL VARIABLES

variable "key_vault_id" {
  description = "The ID of the Key Vault. Exactly one of 'key_vault_id', or 'key_vault_uri' must be specified."
  type        = string
  default     = null
}
variable "key_vault_uri" {
  description = "URI pointing at the Key Vault. Required when using 'federated_identity_client_id'. Exactly one of 'key_vault_id', or 'key_vault_uri' must be specified."
  type        = string
  default     = null
}
variable "key_version" {
  description = "The version of Key Vault Key. Remove or omit this argument to enable Automatic Key Rotation."
  type        = string
  default     = null
}
variable "user_assigned_identity_id" {
  description = "The ID of a user assigned identity."
  type        = string
  default     = null
}
variable "federated_identity_client_id" {
  description = "The Client ID of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account."
  type        = string
  default     = null
}
