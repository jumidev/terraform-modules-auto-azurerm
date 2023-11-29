# REQUIRED VARIABLES

variable "storage_account_id" {
  description = "(REQUIRED) The ID of the storage account the defender applied to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "override_subscription_settings_enabled" {
  description = "Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "malware_scanning_on_upload_enabled" {
  description = "Whether On Upload malware scanning should be enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "malware_scanning_on_upload_cap_gb_per_month" {
  description = "The max GB to be scanned per Month. Must be '-1' or above '0'. Omit this property or set to '-1' if no capping is needed. Defaults to '-1'."
  type        = int
  default     = -1
}
variable "sensitive_data_discovery_enabled" {
  description = "Whether Sensitive Data Discovery should be enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
