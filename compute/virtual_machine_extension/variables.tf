# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the virtual machine extension peering. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_machine_id" {
  description = "(REQUIRED) The ID of the Virtual Machine. Changing this forces a new resource to be created"
  type        = string

}
variable "publisher" {
  description = "(REQUIRED) The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of extension, available types for a publisher can be found using the Azure CLI."
  type        = string

}
variable "type_handler_version" {
  description = "(REQUIRED) Specifies the version of the extension to use, available versions can be found using the Azure CLI."
  type        = string

}

# OPTIONAL VARIABLES

variable "auto_upgrade_minor_version" {
  description = "Specifies if the platform deploys the latest minor version update to the 'type_handler_version' specified."
  type        = string
  default     = null
}
variable "automatic_upgrade_enabled" {
  description = "Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?"
  type        = bool
  default     = null
}
variable "settings" {
  description = "The settings passed to the extension, these are specified as a JSON object in a string."
  type        = string
  default     = null
}
variable "failure_suppression_enabled" {
  description = "Should failures from the extension be suppressed? Possible values are 'true' or 'false'. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "protected_settings" {
  description = "The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string."
  type        = string
  default     = null
}
variable "protected_settings_from_key_vault" {
  description = "A 'protected_settings_from_key_vault' block."
  type        = map(any)
  default     = null
}
#
# protected_settings_from_key_vault block structure:
#   secret_url (string)                              : (REQUIRED) The URL to the Key Vault Secret which stores the protected settings.
#   source_vault_id (string)                         : (REQUIRED) The ID of the source Key Vault.


variable "provision_after_extensions" {
  description = "Specifies the collection of extension names after which this extension needs to be provisioned."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
