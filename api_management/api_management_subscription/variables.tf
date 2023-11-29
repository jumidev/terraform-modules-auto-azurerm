# REQUIRED VARIABLES

variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of this Subscription."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "product_id" {
  description = "The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "user_id" {
  description = "The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "api_id" {
  description = "The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "primary_key" {
  description = "The primary subscription key to use for the subscription."
  type        = string
  default     = null
}
variable "secondary_key" {
  description = "The secondary subscription key to use for the subscription."
  type        = string
  default     = null
}
variable "state" {
  description = "The state of this Subscription. Possible values are 'active', 'cancelled', 'expired', 'rejected', 'submitted' and 'suspended'. Defaults to 'submitted'."
  type        = string
  default     = "submitted"
}
variable "subscription_id" {
  description = "An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "allow_tracing" {
  description = "Determines whether tracing can be enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
