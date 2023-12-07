# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "lookback_date" {
  description = "The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to '1970-01-01T00:00:00Z'. Changing this forces a new resource to be created."
  type        = string
  default     = "1970-01-01T00:00:00Z"
}
variable "tenant_id" {
  description = "The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created."
  type        = string
  default     = null
}
