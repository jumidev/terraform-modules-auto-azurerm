# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The name of the [API Management Service](api_management.html) in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of this API Version Set."
  type        = string

}
variable "versioning_scheme" {
  description = "(REQUIRED) Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are 'Header', 'Query' and 'Segment'."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of API Version Set."
  type        = string
  default     = null
}
variable "version_header_name" {
  description = "The name of the Header which should be read from Inbound Requests which defines the API Version."
  type        = string
  default     = null
}
variable "version_query_name" {
  description = "The name of the Query String which should be read from Inbound Requests which defines the API Version."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
