# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Management Named Value. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The name of the [API Management Service](api_management.html) in which the API Management Named Value should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of this API Management Named Value."
  type        = string

}

# OPTIONAL VARIABLES

variable "value" {
  description = "The value of this API Management Named Value."
  type        = string
  default     = null
}
variable "value_from_key_vault" {
  description = "A 'value_from_key_vault' block."
  type        = map(any)
  default     = null
}
#
# value_from_key_vault block structure:
#   secret_id (string)                  : (REQUIRED) The resource ID of the Key Vault Secret.
#   identity_client_id (string)         : The client ID of User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used in absence.


variable "secret" {
  description = "Specifies whether the API Management Named Value is secret. Valid values are 'true' or 'false'. The default value is 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A list of tags to be applied to the API Management Named Value."
  type        = map(any)
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
