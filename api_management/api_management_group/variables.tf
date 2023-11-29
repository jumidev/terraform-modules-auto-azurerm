# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Management Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The name of the [API Management Service](api_management.html) in which the API Management Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of this API Management Group."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of this API Management Group."
  type        = string
  default     = null
}
variable "external_id" {
  description = "The identifier of the external Group. For example, an Azure Active Directory group 'aad://<tenant id>/groups/<group object id>'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "type" {
  description = "The type of this API Management Group. Possible values are 'custom', 'external' and 'system'. Default is 'custom'. Changing this forces a new resource to be created."
  type        = string
  default     = "custom"
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
