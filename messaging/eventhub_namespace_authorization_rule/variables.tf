# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Authorization Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "listen" {
  description = "Grants listen access to this this Authorization Rule. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "send" {
  description = "Grants send access to this this Authorization Rule. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "manage" {
  description = "Grants manage access to this this Authorization Rule. When this property is 'true' - both 'listen' and 'send' must be too. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
