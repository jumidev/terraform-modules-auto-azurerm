# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "alerts_enabled" {
  description = "Should the alerts be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "discovery_logs_enabled" {
  description = "Should the Discovery Logs be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tenant_id" {
  description = "The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to."
  type        = string
  default     = null
}
