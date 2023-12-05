# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Connection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "field" {
  description = "(REQUIRED) One or more 'field' blocks. Changing this forces a new Automation to be created."
  type        = map(map(any))
}
#
# field block structure:
#   name (string)        : (REQUIRED) The name which should be used for this connection field definition.
#   type (string)        : (REQUIRED) The type of the connection field definition.
#   is_encrypted (string): Whether to set the isEncrypted flag of the connection field definition.
#   is_optional (string) : Whether to set the isOptional flag of the connection field definition.



# OPTIONAL VARIABLES

variable "is_global" {
  description = "Whether the connection type is global. Changing this forces a new Automation to be created."
  type        = bool
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
