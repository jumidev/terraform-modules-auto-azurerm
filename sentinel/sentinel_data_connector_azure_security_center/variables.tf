# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Azure Security Center Data Connector resides in. Changing this forces a new Azure Security Center Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Security Center Data Connector. Changing this forces a new Azure Security Center Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "subscription_id" {
  description = "The ID of the subscription that this Azure Security Center Data Connector connects to. Changing this forces a new Azure Security Center Data Connector to be created."
  type        = string
  default     = null
}
