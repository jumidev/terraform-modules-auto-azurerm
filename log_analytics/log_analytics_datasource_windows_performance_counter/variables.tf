# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created."
  type        = string

}
variable "workspace_name" {
  description = "(REQUIRED) The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created."
  type        = string

}
variable "object_name" {
  description = "(REQUIRED) The object name of the Log Analytics Windows Performance Counter DataSource."
  type        = string

}
variable "instance_name" {
  description = "(REQUIRED) The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a '*' will apply to all instances."
  type        = string

}
variable "counter_name" {
  description = "(REQUIRED) The friendly name of the performance counter."
  type        = string

}
variable "interval_seconds" {
  description = "(REQUIRED) The time of sample interval in seconds. Supports values between 10 and 2147483647."
  type        = number

}

# OPTIONAL VARIABLES

variable "log_analytics_workspace_resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
