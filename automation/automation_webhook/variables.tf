# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Webhook. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created."
  type        = string

}
variable "expiry_time" {
  description = "(REQUIRED) Timestamp when the webhook expires. Changing this forces a new resource to be created."
  type        = string

}
variable "runbook_name" {
  description = "(REQUIRED) Name of the Automation Runbook to execute by Webhook."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Controls if Webhook is enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "run_on_worker_group" {
  description = "Name of the hybrid worker group the Webhook job will run on."
  type        = string
  default     = null
}
variable "parameters" {
  description = "Map of input parameters passed to runbook."
  type        = string
  default     = null
}
variable "uri" {
  description = "URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
