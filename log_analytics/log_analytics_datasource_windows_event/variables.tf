# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created."
  type        = string

}
variable "workspace_name" {
  description = "(REQUIRED) The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created."
  type        = string

}
variable "event_log_name" {
  description = "(REQUIRED) Specifies the name of the Windows Event Log to collect events from."
  type        = string

}
variable "event_types" {
  description = "(REQUIRED) Specifies an array of event types applied to the specified event log. Possible values include 'Error', 'Warning' and 'Information'."
  type        = string

}

# OPTIONAL VARIABLES

variable "log_analytics_workspace_resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace is located in..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
