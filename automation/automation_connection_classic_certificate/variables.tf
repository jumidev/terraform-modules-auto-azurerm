# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Connection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Connection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_asset_name" {
  description = "(REQUIRED) The name of the certificate asset."
  type        = string

}
variable "subscription_name" {
  description = "(REQUIRED) The name of subscription."
  type        = string

}
variable "subscription_id" {
  description = "(REQUIRED) The id of subscription."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for this Connection."
  type        = string
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
