# REQUIRED VARIABLES

variable "arc_machine_id" {
  description = "(REQUIRED) The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created."
  type        = string

}
variable "publisher" {
  description = "(REQUIRED) The name of the extension handler publisher, such as 'Microsoft.Azure.Monitor'. Changing this forces a new Hybrid Compute Machine Extension to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) Specifies the type of the extension. For example 'CustomScriptExtension' or 'AzureMonitorLinuxAgent'. Changing this forces a new Hybrid Compute Machine Extension to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "automatic_upgrade_enabled" {
  description = "Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are 'true' and 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "force_update_tag" {
  description = "How the extension handler should be forced to update even if the extension configuration has not changed."
  type        = string
  default     = null
}
variable "protected_settings" {
  description = "Json formatted protected settings for the extension."
  type        = string
  default     = null
}
variable "settings" {
  description = "Json formatted public settings for the extension."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Hybrid Compute Machine Extension."
  type        = map(any)
  default     = null
}
variable "type_handler_version" {
  description = "Specifies the version of the script handler."
  type        = string
  default     = null
}
