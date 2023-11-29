# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_machine_scale_set_id" {
  description = "(REQUIRED) The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created."
  type        = string

}
variable "publisher" {
  description = "(REQUIRED) Specifies the Publisher of the Extension. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) Specifies the Type of the Extension. Changing this forces a new resource to be created."
  type        = string

}
variable "type_handler_version" {
  description = "(REQUIRED) Specifies the version of the extension to use, available versions can be found using the Azure CLI."
  type        = string

}

# OPTIONAL VARIABLES

variable "auto_upgrade_minor_version" {
  description = "Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "automatic_upgrade_enabled" {
  description = "Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?"
  type        = bool
  default     = null
}
variable "failure_suppression_enabled" {
  description = "Should failures from the extension be suppressed? Possible values are 'true' or 'false'. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "force_update_tag" {
  description = "A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed."
  type        = string
  default     = null
}
variable "protected_settings" {
  description = "A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension."
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
  description = "An ordered list of Extension names which this should be provisioned after."
  type        = string
  default     = null
}
variable "settings" {
  description = "A JSON String which specifies Settings for the Extension."
  type        = string
  default     = null
}
