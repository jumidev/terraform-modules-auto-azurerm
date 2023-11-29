# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created."
  type        = string

}
variable "alert_rule_template_guid" {
  description = "(REQUIRED) The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
