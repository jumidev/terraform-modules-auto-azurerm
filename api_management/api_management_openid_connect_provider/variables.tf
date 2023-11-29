# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) The Client ID used for the Client Application."
  type        = string

}
variable "client_secret" {
  description = "(REQUIRED) The Client Secret used for the Client Application."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) A user-friendly name for this OpenID Connect Provider."
  type        = string

}
variable "metadata_endpoint" {
  description = "(REQUIRED) The URI of the Metadata endpoint."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of this OpenID Connect Provider."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
