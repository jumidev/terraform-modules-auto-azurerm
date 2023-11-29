# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Office 365 Data Connector resides in. Changing this forces a new Office 365 Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Office 365 Data Connector. Changing this forces a new Office 365 Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "exchange_enabled" {
  description = "Should the Exchange data connector be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "sharepoint_enabled" {
  description = "Should the SharePoint data connector be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "teams_enabled" {
  description = "Should the Microsoft Teams data connector be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tenant_id" {
  description = "The ID of the Tenant that this Office 365 Data Connector connects to. Changing this forces a new Office 365 Data Connector to be created."
  type        = string
  default     = null
}
