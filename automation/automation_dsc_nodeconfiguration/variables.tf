# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the DSC Node Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the DSC Node Configuration is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the DSC Node Configuration is created. Changing this forces a new resource to be created."
  type        = string

}
variable "content_embedded" {
  description = "(REQUIRED) The PowerShell DSC Node Configuration (mof content)."
  type        = string

}

# OPTIONAL VARIABLES

variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
