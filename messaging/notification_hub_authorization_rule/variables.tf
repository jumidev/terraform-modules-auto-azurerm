# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name to use for this Authorization Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "notification_hub_name" {
  description = "(REQUIRED) The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "manage" {
  description = "Does this Authorization Rule have Manage access to the Notification Hub? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "send" {
  description = "Does this Authorization Rule have Send access to the Notification Hub? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "listen" {
  description = "Does this Authorization Rule have Listen access to the Notification Hub? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "notification_hub_namespace_name" {
  description = "Specifies the Name of the Notification Hub Namespace which contains the Notification Hub..  If not specified, value of var.namespace_name will be used."
  type        = string
  default     = null
}
variable "notification_hub_resource_group_name" {
  description = "Specifies the Name of the Resource Group within which the Notification Hub exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
