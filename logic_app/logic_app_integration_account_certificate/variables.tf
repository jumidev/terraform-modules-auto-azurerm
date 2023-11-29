# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "key_vault_key" {
  description = "A 'key_vault_key' block."
  type        = map(any)
  default     = null
}
#
# key_vault_key block structure:
#   key_name (string)            : (REQUIRED) The name of Key Vault Key.
#   key_vault_id (string)        : (REQUIRED) The ID of the Key Vault.
#   key_version (string)         : The version of Key Vault Key.


variable "metadata" {
  description = "A JSON mapping of any Metadata for this Logic App Integration Account Certificate."
  type        = string
  default     = null
}
variable "public_certificate" {
  description = "The public certificate for the Logic App Integration Account Certificate."
  type        = string
  default     = null
}
