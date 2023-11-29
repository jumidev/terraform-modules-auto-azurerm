# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created."
  type        = string

}
variable "runbook_name" {
  description = "(REQUIRED) The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created."
  type        = string

}
variable "schedule_name" {
  description = "(REQUIRED) The name of the Schedule. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "parameters" {
  description = "A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "run_on" {
  description = "Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
