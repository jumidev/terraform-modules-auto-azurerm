# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_name" {
  description = "(REQUIRED) Specifies the name of the EventHub. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "listen" {
  description = "Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "send" {
  description = "Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "manage" {
  description = "Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is 'true' - both 'listen' and 'send' must be too. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_resource_group_name" {
  description = "The name of the Resource Group where the EventHub exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_name" {
  description = "The name of the EventHub Namespace where the EventHub exists..  If not specified, value of var.namespace_name will be used."
  type        = string
  default     = null
}
