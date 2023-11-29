# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_namespace_id" {
  description = "(REQUIRED) The ID of the EventHub Namespace to replicate to."
  type        = string

}

# OPTIONAL VARIABLES

variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
