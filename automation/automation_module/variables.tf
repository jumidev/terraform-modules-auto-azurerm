# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Module. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Module is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Module is created. Changing this forces a new resource to be created."
  type        = string

}
variable "module_link" {
  description = "(REQUIRED) A 'module_link' block."
  type        = map(any)
}
#
# module_link block structure:
#   uri (string)               : (REQUIRED) The URI of the module content (zip or nupkg).
#   hash (block)               : A 'hash' block.
#
# hash block structure:
#   algorithm (string)  : (REQUIRED) Specifies the algorithm used for the hash content.
#   value (string)      : (REQUIRED) The hash value of the content.



# OPTIONAL VARIABLES

variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
