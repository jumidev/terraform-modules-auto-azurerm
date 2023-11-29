# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Azure Advanced Threat Protection Data Connector resides in. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Advanced Threat Protection Data Connector. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tenant_id" {
  description = "The ID of the tenant that this Azure Advanced Threat Protection Data Connector connects to. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created."
  type        = string
  default     = null
}
