# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created."
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
  description = "(REQUIRED) The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "user_metadata" {
  description = "Specifies the user metadata."
  type        = string
  default     = null
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_resource_group_name" {
  description = "The name of the Resource Group where the EventHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_name" {
  description = "The name of the EventHub Namespace where the EventHub exists..  If not specified, value of var.namespace_name will be used..  If not specified, value of var.namespace_name will be used."
  type        = string
  default     = null
}
