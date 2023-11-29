# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Should the Built-in Anomaly Alert Rule be enabled?"
  type        = bool

}
variable "mode" {
  description = "(REQUIRED) mode of the Built-in Anomaly Alert Rule. Possible Values are 'Production' and 'Flighting'."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The Name of the built-in Anomaly Alert Rule."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The Display Name of the built-in Anomaly Alert Rule."
  type        = string
  default     = null
}
