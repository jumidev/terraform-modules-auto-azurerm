# REQUIRED VARIABLES

variable "eventhub_namespace_id" {
  description = "(REQUIRED) The ID of the EventHub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_key_ids" {
  description = "(REQUIRED) The list of keys of Key Vault."
  type        = string

}

# OPTIONAL VARIABLES

variable "infrastructure_encryption_enabled" {
  description = "Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "user_assigned_identity_id" {
  description = "The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys."
  type        = string
  default     = null
}
