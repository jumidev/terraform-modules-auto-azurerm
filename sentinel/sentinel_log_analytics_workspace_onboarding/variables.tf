
# OPTIONAL VARIABLES

variable "resource_group_name" {
  description = "Specifies the name of the Resource Group where the Security Insights Sentinel Onboarding States should exist. Changing this forces the Log Analytics Workspace off the board and onboard again."
  type        = string
  default     = null
}
variable "workspace_name" {
  description = "Specifies the Workspace Name. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "customer_managed_key_enabled" {
  description = "Specifies if the Workspace is using Customer managed key. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "log_analytics_workspace_resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
