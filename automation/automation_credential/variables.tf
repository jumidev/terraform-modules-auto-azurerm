# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Credential. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Credential is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Credential is created. Changing this forces a new resource to be created."
  type        = string

}
variable "username" {
  description = "(REQUIRED) The username associated with this Automation Credential."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password associated with this Automation Credential."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description associated with this Automation Credential."
  type        = string
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
