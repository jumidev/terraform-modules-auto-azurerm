# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created."
  type        = string

}
variable "hybrid_connection_name" {
  description = "(REQUIRED) Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "listen" {
  description = "Grants listen access to this Authorization Rule. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "send" {
  description = "Grants send access to this Authorization Rule. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "manage" {
  description = "Grants manage access to this Authorization Rule. When this property is 'true' - both 'listen' and 'send' must be set to 'true' too. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
