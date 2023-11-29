# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Iot Data Connector resides in. Changing this forces a new Iot Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Iot Data Connector. Changing this forces a new Iot Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "subscription_id" {
  description = "The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created."
  type        = string
  default     = null
}
